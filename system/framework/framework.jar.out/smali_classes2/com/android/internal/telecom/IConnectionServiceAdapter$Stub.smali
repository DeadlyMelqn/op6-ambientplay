.class public abstract Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.super Landroid/os/Binder;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionServiceAdapter"

.field static final TRANSACTION_addConferenceCall:I = 0xd

.field static final TRANSACTION_addExistingConnection:I = 0x19

.field static final TRANSACTION_handleCreateConnectionComplete:I = 0x1

.field static final TRANSACTION_onConnectionEvent:I = 0x1d

.field static final TRANSACTION_onPostDialChar:I = 0x10

.field static final TRANSACTION_onPostDialWait:I = 0xf

.field static final TRANSACTION_onRemoteRttRequest:I = 0x21

.field static final TRANSACTION_onRttInitiationFailure:I = 0x1f

.field static final TRANSACTION_onRttInitiationSuccess:I = 0x1e

.field static final TRANSACTION_onRttSessionRemotelyTerminated:I = 0x20

.field static final TRANSACTION_putExtras:I = 0x1a

.field static final TRANSACTION_queryRemoteConnectionServices:I = 0x11

.field static final TRANSACTION_removeCall:I = 0xe

.field static final TRANSACTION_removeExtras:I = 0x1b

.field static final TRANSACTION_resetCdmaConnectionTime:I = 0x22

.field static final TRANSACTION_setActive:I = 0x2

.field static final TRANSACTION_setAddress:I = 0x16

.field static final TRANSACTION_setAudioRoute:I = 0x1c

.field static final TRANSACTION_setCallerDisplayName:I = 0x17

.field static final TRANSACTION_setConferenceMergeFailed:I = 0xc

.field static final TRANSACTION_setConferenceableConnections:I = 0x18

.field static final TRANSACTION_setConnectionCapabilities:I = 0x9

.field static final TRANSACTION_setConnectionProperties:I = 0xa

.field static final TRANSACTION_setDialing:I = 0x4

.field static final TRANSACTION_setDisconnected:I = 0x6

.field static final TRANSACTION_setIsConferenced:I = 0xb

.field static final TRANSACTION_setIsVoipAudioMode:I = 0x14

.field static final TRANSACTION_setOnHold:I = 0x7

.field static final TRANSACTION_setPulling:I = 0x5

.field static final TRANSACTION_setRingbackRequested:I = 0x8

.field static final TRANSACTION_setRinging:I = 0x3

.field static final TRANSACTION_setStatusHints:I = 0x15

.field static final TRANSACTION_setVideoProvider:I = 0x12

.field static final TRANSACTION_setVideoState:I = 0x13


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    return-object v1

    .line 33
    :cond_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 660
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    .line 49
    :sswitch_0
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/16 v25, 0x1

    return v25

    .line 54
    :sswitch_1
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_0

    .line 59
    sget-object v25, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telecom/ConnectionRequest;

    .line 65
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1

    .line 66
    sget-object v25, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telecom/ParcelableConnection;

    .line 72
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2

    .line 73
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/Logging/Session$Info;

    .line 78
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v10, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 79
    const/16 v25, 0x1

    return v25

    .line 62
    :cond_0
    const/4 v10, 0x0

    .local v10, "_arg1":Landroid/telecom/ConnectionRequest;
    goto :goto_0

    .line 69
    .end local v10    # "_arg1":Landroid/telecom/ConnectionRequest;
    :cond_1
    const/16 v23, 0x0

    .local v23, "_arg2":Landroid/telecom/ParcelableConnection;
    goto :goto_1

    .line 76
    .end local v23    # "_arg2":Landroid/telecom/ParcelableConnection;
    :cond_2
    const/16 v24, 0x0

    .local v24, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_2

    .line 83
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_2
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 87
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_3

    .line 88
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 93
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setActive(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 94
    const/16 v25, 0x1

    return v25

    .line 91
    :cond_3
    const/4 v12, 0x0

    .local v12, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_3

    .line 98
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_3
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_4

    .line 103
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 108
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRinging(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 109
    const/16 v25, 0x1

    return v25

    .line 106
    :cond_4
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_4

    .line 113
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_4
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 117
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_5

    .line 118
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 123
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDialing(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 124
    const/16 v25, 0x1

    return v25

    .line 121
    :cond_5
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_5

    .line 128
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_5
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_6

    .line 133
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 138
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setPulling(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 139
    const/16 v25, 0x1

    return v25

    .line 136
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_6

    .line 143
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_6
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_7

    .line 148
    sget-object v25, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/DisconnectCause;

    .line 154
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_8

    .line 155
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 160
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v11, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;Landroid/telecom/Logging/Session$Info;)V

    .line 161
    const/16 v25, 0x1

    return v25

    .line 151
    :cond_7
    const/4 v11, 0x0

    .local v11, "_arg1":Landroid/telecom/DisconnectCause;
    goto :goto_7

    .line 158
    .end local v11    # "_arg1":Landroid/telecom/DisconnectCause;
    :cond_8
    const/16 v22, 0x0

    .local v22, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_8

    .line 165
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_7
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 169
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_9

    .line 170
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 175
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setOnHold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 176
    const/16 v25, 0x1

    return v25

    .line 173
    :cond_9
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_9

    .line 180
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_8
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_a

    const/16 v19, 0x1

    .line 186
    .local v19, "_arg1":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_b

    .line 187
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 192
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setRingbackRequested(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 193
    const/16 v25, 0x1

    return v25

    .line 184
    .end local v19    # "_arg1":Z
    :cond_a
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Z
    goto :goto_a

    .line 190
    :cond_b
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_b

    .line 197
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Z
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_9
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 201
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_c

    .line 204
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 209
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionCapabilities(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 210
    const/16 v25, 0x1

    return v25

    .line 207
    :cond_c
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_c

    .line 214
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_a
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 218
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_d

    .line 221
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 226
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConnectionProperties(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 227
    const/16 v25, 0x1

    return v25

    .line 224
    :cond_d
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_d

    .line 231
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_b
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 237
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_e

    .line 238
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 243
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 244
    const/16 v25, 0x1

    return v25

    .line 241
    :cond_e
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_e

    .line 248
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_c
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 252
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_f

    .line 253
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 258
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceMergeFailed(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 259
    const/16 v25, 0x1

    return v25

    .line 256
    :cond_f
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_f

    .line 263
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_d
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_10

    .line 268
    sget-object v25, Landroid/telecom/ParcelableConference;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telecom/ParcelableConference;

    .line 274
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_11

    .line 275
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 280
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v13, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;Landroid/telecom/Logging/Session$Info;)V

    .line 281
    const/16 v25, 0x1

    return v25

    .line 271
    :cond_10
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/telecom/ParcelableConference;
    goto :goto_10

    .line 278
    .end local v13    # "_arg1":Landroid/telecom/ParcelableConference;
    :cond_11
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_11

    .line 285
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_e
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 289
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_12

    .line 290
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 295
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 296
    const/16 v25, 0x1

    return v25

    .line 293
    :cond_12
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_12

    .line 300
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_f
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 306
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_13

    .line 307
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 312
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialWait(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 313
    const/16 v25, 0x1

    return v25

    .line 310
    :cond_13
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_13

    .line 317
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_10
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move/from16 v0, v25

    int-to-char v6, v0

    .line 323
    .local v6, "_arg1":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_14

    .line 324
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 329
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onPostDialChar(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 330
    const/16 v25, 0x1

    return v25

    .line 327
    :cond_14
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_14

    .line 334
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":C
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_11
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/RemoteServiceCallback;

    move-result-object v4

    .line 338
    .local v4, "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_15

    .line 339
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 344
    :goto_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;Landroid/telecom/Logging/Session$Info;)V

    .line 345
    const/16 v25, 0x1

    return v25

    .line 342
    :cond_15
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_15

    .line 349
    .end local v4    # "_arg0":Lcom/android/internal/telecom/RemoteServiceCallback;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_12
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/internal/telecom/IVideoProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v16

    .line 355
    .local v16, "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_16

    .line 356
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 361
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Logging/Session$Info;)V

    .line 362
    const/16 v25, 0x1

    return v25

    .line 359
    :cond_16
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_16

    .line 366
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":Lcom/android/internal/telecom/IVideoProvider;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_13
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 372
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_17

    .line 373
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 378
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setVideoState(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 379
    const/16 v25, 0x1

    return v25

    .line 376
    :cond_17
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_17

    .line 383
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_14
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 387
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_18

    const/16 v19, 0x1

    .line 389
    .restart local v19    # "_arg1":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_19

    .line 390
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 395
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setIsVoipAudioMode(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 396
    const/16 v25, 0x1

    return v25

    .line 387
    .end local v19    # "_arg1":Z
    :cond_18
    const/16 v19, 0x0

    .restart local v19    # "_arg1":Z
    goto :goto_18

    .line 393
    :cond_19
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_19

    .line 400
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":Z
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_15
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 404
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1a

    .line 405
    sget-object v25, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telecom/StatusHints;

    .line 411
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1b

    .line 412
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 417
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v15, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;Landroid/telecom/Logging/Session$Info;)V

    .line 418
    const/16 v25, 0x1

    return v25

    .line 408
    :cond_1a
    const/4 v15, 0x0

    .local v15, "_arg1":Landroid/telecom/StatusHints;
    goto :goto_1a

    .line 415
    .end local v15    # "_arg1":Landroid/telecom/StatusHints;
    :cond_1b
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1b

    .line 422
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_16
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 426
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1c

    .line 427
    sget-object v25, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 433
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 435
    .local v20, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1d

    .line 436
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/Logging/Session$Info;

    .line 441
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-virtual {v0, v5, v8, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAddress(Ljava/lang/String;Landroid/net/Uri;ILandroid/telecom/Logging/Session$Info;)V

    .line 442
    const/16 v25, 0x1

    return v25

    .line 430
    .end local v20    # "_arg2":I
    :cond_1c
    const/4 v8, 0x0

    .local v8, "_arg1":Landroid/net/Uri;
    goto :goto_1c

    .line 439
    .end local v8    # "_arg1":Landroid/net/Uri;
    .restart local v20    # "_arg2":I
    :cond_1d
    const/16 v24, 0x0

    .restart local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_1d

    .line 446
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_17
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 450
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 452
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 454
    .restart local v20    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1e

    .line 455
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/Logging/Session$Info;

    .line 460
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v20

    move-object/from16 v3, v24

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 461
    const/16 v25, 0x1

    return v25

    .line 458
    :cond_1e
    const/16 v24, 0x0

    .restart local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_1e

    .line 465
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v20    # "_arg2":I
    .end local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_18
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 469
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 471
    .local v18, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_1f

    .line 472
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 477
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setConferenceableConnections(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 478
    const/16 v25, 0x1

    return v25

    .line 475
    :cond_1f
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1f

    .line 482
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_19
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 486
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_20

    .line 487
    sget-object v25, Landroid/telecom/ParcelableConnection;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/ParcelableConnection;

    .line 493
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_21

    .line 494
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 499
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v14, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;Landroid/telecom/Logging/Session$Info;)V

    .line 500
    const/16 v25, 0x1

    return v25

    .line 490
    :cond_20
    const/4 v14, 0x0

    .local v14, "_arg1":Landroid/telecom/ParcelableConnection;
    goto :goto_20

    .line 497
    .end local v14    # "_arg1":Landroid/telecom/ParcelableConnection;
    :cond_21
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_21

    .line 504
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_1a
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 508
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_22

    .line 509
    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 515
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_23

    .line 516
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 521
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v9, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 522
    const/16 v25, 0x1

    return v25

    .line 512
    :cond_22
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/Bundle;
    goto :goto_22

    .line 519
    .end local v9    # "_arg1":Landroid/os/Bundle;
    :cond_23
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_23

    .line 526
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_1b
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 530
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 532
    .restart local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_24

    .line 533
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 538
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;Landroid/telecom/Logging/Session$Info;)V

    .line 539
    const/16 v25, 0x1

    return v25

    .line 536
    :cond_24
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_24

    .line 543
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v18    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_1c
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 547
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 549
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_25

    .line 550
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 555
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->setAudioRoute(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 556
    const/16 v25, 0x1

    return v25

    .line 553
    :cond_25
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_25

    .line 560
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_1d
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 564
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 566
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_26

    .line 567
    sget-object v25, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Bundle;

    .line 573
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_27

    .line 574
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/Logging/Session$Info;

    .line 579
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 580
    const/16 v25, 0x1

    return v25

    .line 570
    :cond_26
    const/16 v21, 0x0

    .local v21, "_arg2":Landroid/os/Bundle;
    goto :goto_26

    .line 577
    .end local v21    # "_arg2":Landroid/os/Bundle;
    :cond_27
    const/16 v24, 0x0

    .restart local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_27

    .line 584
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v24    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_1e
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 588
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_28

    .line 589
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 594
    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationSuccess(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 595
    const/16 v25, 0x1

    return v25

    .line 592
    :cond_28
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_28

    .line 599
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_1f
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 603
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 605
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_29

    .line 606
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telecom/Logging/Session$Info;

    .line 611
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v7, v1}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttInitiationFailure(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 612
    const/16 v25, 0x1

    return v25

    .line 609
    :cond_29
    const/16 v22, 0x0

    .restart local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_29

    .line 616
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v22    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_20
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 620
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2a

    .line 621
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 626
    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRttSessionRemotelyTerminated(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 627
    const/16 v25, 0x1

    return v25

    .line 624
    :cond_2a
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_2a

    .line 631
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_21
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 635
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2b

    .line 636
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 641
    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->onRemoteRttRequest(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 642
    const/16 v25, 0x1

    return v25

    .line 639
    :cond_2b
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_2b

    .line 646
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_22
    const-string/jumbo v25, "com.android.internal.telecom.IConnectionServiceAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 650
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2c

    .line 651
    sget-object v25, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telecom/Logging/Session$Info;

    .line 656
    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->resetCdmaConnectionTime(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 657
    const/16 v25, 0x1

    return v25

    .line 654
    :cond_2c
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_2c

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
