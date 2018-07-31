.class public abstract Lcom/android/internal/telecom/IConnectionService$Stub;
.super Landroid/os/Binder;
.source "IConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IConnectionService"

.field static final TRANSACTION_abort:I = 0x6

.field static final TRANSACTION_addConnectionServiceAdapter:I = 0x1

.field static final TRANSACTION_addParticipantWithConference:I = 0x1d

.field static final TRANSACTION_answer:I = 0x8

.field static final TRANSACTION_answerVideo:I = 0x7

.field static final TRANSACTION_conference:I = 0x12

.field static final TRANSACTION_createConnection:I = 0x3

.field static final TRANSACTION_createConnectionComplete:I = 0x4

.field static final TRANSACTION_createConnectionFailed:I = 0x5

.field static final TRANSACTION_disconnect:I = 0xb

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_mergeConference:I = 0x14

.field static final TRANSACTION_onCallAudioStateChanged:I = 0xf

.field static final TRANSACTION_onExtrasChanged:I = 0x19

.field static final TRANSACTION_onPostDialContinue:I = 0x16

.field static final TRANSACTION_playDtmfTone:I = 0x10

.field static final TRANSACTION_pullExternalCall:I = 0x17

.field static final TRANSACTION_reject:I = 0x9

.field static final TRANSACTION_rejectWithMessage:I = 0xa

.field static final TRANSACTION_removeConnectionServiceAdapter:I = 0x2

.field static final TRANSACTION_respondToRttUpgradeRequest:I = 0x1c

.field static final TRANSACTION_sendCallEvent:I = 0x18

.field static final TRANSACTION_silence:I = 0xc

.field static final TRANSACTION_splitFromConference:I = 0x13

.field static final TRANSACTION_startRtt:I = 0x1a

.field static final TRANSACTION_stopDtmfTone:I = 0x11

.field static final TRANSACTION_stopRtt:I = 0x1b

.field static final TRANSACTION_swapConference:I = 0x15

.field static final TRANSACTION_unhold:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IConnectionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionService;
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
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telecom/IConnectionService;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/android/internal/telecom/IConnectionService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 37
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IConnectionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 31
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

    .line 578
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 49
    :sswitch_0
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x1

    return v5

    .line 54
    :sswitch_1
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v18

    .line 58
    .local v18, "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 64
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->addConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 65
    const/4 v5, 0x1

    return v5

    .line 62
    :cond_0
    const/16 v25, 0x0

    .local v25, "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_0

    .line 69
    .end local v18    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_2
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-result-object v18

    .line 73
    .restart local v18    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 79
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->removeConnectionServiceAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;Landroid/telecom/Logging/Session$Info;)V

    .line 80
    const/4 v5, 0x1

    return v5

    .line 77
    :cond_1
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1

    .line 84
    .end local v18    # "_arg0":Lcom/android/internal/telecom/IConnectionServiceAdapter;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_3
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 87
    sget-object v5, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 93
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 96
    sget-object v5, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConnectionRequest;

    .line 102
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v9, 0x1

    .line 104
    .local v9, "_arg3":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x1

    .line 106
    .local v10, "_arg4":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 107
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/Logging/Session$Info;

    :goto_6
    move-object/from16 v5, p0

    .line 112
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZLandroid/telecom/Logging/Session$Info;)V

    .line 113
    const/4 v5, 0x1

    return v5

    .line 90
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg3":Z
    .end local v10    # "_arg4":Z
    :cond_2
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_2

    .line 99
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x0

    .local v8, "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_3

    .line 102
    .end local v8    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Z
    goto :goto_4

    .line 104
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "_arg4":Z
    goto :goto_5

    .line 110
    :cond_6
    const/4 v11, 0x0

    .local v11, "_arg5":Landroid/telecom/Logging/Session$Info;
    goto :goto_6

    .line 117
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg3":Z
    .end local v10    # "_arg4":Z
    .end local v11    # "_arg5":Landroid/telecom/Logging/Session$Info;
    :sswitch_4
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 121
    .local v19, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 122
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 127
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionComplete(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 128
    const/4 v5, 0x1

    return v5

    .line 125
    :cond_7
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_7

    .line 132
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_5
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 135
    sget-object v5, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    .line 141
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 143
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    .line 144
    sget-object v5, Landroid/telecom/ConnectionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/ConnectionRequest;

    .line 150
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v9, 0x1

    .line 152
    .restart local v9    # "_arg3":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 153
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telecom/Logging/Session$Info;

    :goto_b
    move-object/from16 v12, p0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move/from16 v16, v9

    .line 158
    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telecom/IConnectionService$Stub;->createConnectionFailed(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZLandroid/telecom/Logging/Session$Info;)V

    .line 159
    const/4 v5, 0x1

    return v5

    .line 138
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg3":Z
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_8

    .line 147
    .end local v6    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v7    # "_arg1":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "_arg2":Landroid/telecom/ConnectionRequest;
    goto :goto_9

    .line 150
    .end local v8    # "_arg2":Landroid/telecom/ConnectionRequest;
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "_arg3":Z
    goto :goto_a

    .line 156
    :cond_b
    const/16 v17, 0x0

    .local v17, "_arg4":Landroid/telecom/Logging/Session$Info;
    goto :goto_b

    .line 163
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v9    # "_arg3":Z
    .end local v17    # "_arg4":Landroid/telecom/Logging/Session$Info;
    :sswitch_6
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 167
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    .line 168
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 173
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->abort(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 174
    const/4 v5, 0x1

    return v5

    .line 171
    :cond_c
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_c

    .line 178
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_7
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 182
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 184
    .local v21, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 185
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 190
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->answerVideo(Ljava/lang/String;ILandroid/telecom/Logging/Session$Info;)V

    .line 191
    const/4 v5, 0x1

    return v5

    .line 188
    :cond_d
    const/16 v29, 0x0

    .local v29, "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_d

    .line 195
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":I
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_8
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 199
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    .line 200
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 205
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->answer(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 206
    const/4 v5, 0x1

    return v5

    .line 203
    :cond_e
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_e

    .line 210
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_9
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 214
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 215
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 220
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->reject(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 221
    const/4 v5, 0x1

    return v5

    .line 218
    :cond_f
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_f

    .line 225
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_a
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 229
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 231
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 232
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 237
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->rejectWithMessage(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 238
    const/4 v5, 0x1

    return v5

    .line 235
    :cond_10
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_10

    .line 242
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_b
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 246
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 247
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 252
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->disconnect(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 253
    const/4 v5, 0x1

    return v5

    .line 250
    :cond_11
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_11

    .line 257
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_c
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 261
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 262
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 267
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->silence(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 268
    const/4 v5, 0x1

    return v5

    .line 265
    :cond_12
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_12

    .line 272
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_d
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 276
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 277
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 282
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->hold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 283
    const/4 v5, 0x1

    return v5

    .line 280
    :cond_13
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_13

    .line 287
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_e
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 291
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    .line 292
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 297
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->unhold(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 298
    const/4 v5, 0x1

    return v5

    .line 295
    :cond_14
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_14

    .line 302
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_f
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 306
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 307
    sget-object v5, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telecom/CallAudioState;

    .line 313
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    .line 314
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 319
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;Landroid/telecom/Logging/Session$Info;)V

    .line 320
    const/4 v5, 0x1

    return v5

    .line 310
    :cond_15
    const/16 v24, 0x0

    .local v24, "_arg1":Landroid/telecom/CallAudioState;
    goto :goto_15

    .line 317
    .end local v24    # "_arg1":Landroid/telecom/CallAudioState;
    :cond_16
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_16

    .line 324
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_10
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 328
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    int-to-char v0, v5

    move/from16 v20, v0

    .line 330
    .local v20, "_arg1":C
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 331
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 336
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->playDtmfTone(Ljava/lang/String;CLandroid/telecom/Logging/Session$Info;)V

    .line 337
    const/4 v5, 0x1

    return v5

    .line 334
    :cond_17
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_17

    .line 341
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":C
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_11
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 345
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_18

    .line 346
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 351
    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopDtmfTone(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 352
    const/4 v5, 0x1

    return v5

    .line 349
    :cond_18
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_18

    .line 356
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_12
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 360
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 362
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 363
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 368
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->conference(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 369
    const/4 v5, 0x1

    return v5

    .line 366
    :cond_19
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_19

    .line 373
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_13
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 377
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 378
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 383
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->splitFromConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 384
    const/4 v5, 0x1

    return v5

    .line 381
    :cond_1a
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1a

    .line 388
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_14
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 392
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 393
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 398
    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->mergeConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 399
    const/4 v5, 0x1

    return v5

    .line 396
    :cond_1b
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1b

    .line 403
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_15
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 407
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 408
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 413
    :goto_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->swapConference(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 414
    const/4 v5, 0x1

    return v5

    .line 411
    :cond_1c
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1c

    .line 418
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_16
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 422
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v26, 0x1

    .line 424
    .local v26, "_arg1":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 425
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 430
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v26

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onPostDialContinue(Ljava/lang/String;ZLandroid/telecom/Logging/Session$Info;)V

    .line 431
    const/4 v5, 0x1

    return v5

    .line 422
    .end local v26    # "_arg1":Z
    :cond_1d
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Z
    goto :goto_1d

    .line 428
    :cond_1e
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_1e

    .line 435
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v26    # "_arg1":Z
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_17
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 439
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 440
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 445
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->pullExternalCall(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 446
    const/4 v5, 0x1

    return v5

    .line 443
    :cond_1f
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_1f

    .line 450
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_18
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 454
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 456
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 457
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    .line 463
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 464
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    .line 469
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 470
    const/4 v5, 0x1

    return v5

    .line 460
    :cond_20
    const/16 v27, 0x0

    .local v27, "_arg2":Landroid/os/Bundle;
    goto :goto_20

    .line 467
    .end local v27    # "_arg2":Landroid/os/Bundle;
    :cond_21
    const/16 v30, 0x0

    .local v30, "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_21

    .line 474
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_19
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 478
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 479
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/Bundle;

    .line 485
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    .line 486
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/telecom/Logging/Session$Info;

    .line 491
    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telecom/IConnectionService$Stub;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;Landroid/telecom/Logging/Session$Info;)V

    .line 492
    const/4 v5, 0x1

    return v5

    .line 482
    :cond_22
    const/16 v22, 0x0

    .local v22, "_arg1":Landroid/os/Bundle;
    goto :goto_22

    .line 489
    .end local v22    # "_arg1":Landroid/os/Bundle;
    :cond_23
    const/16 v29, 0x0

    .restart local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    goto :goto_23

    .line 496
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg2":Landroid/telecom/Logging/Session$Info;
    :sswitch_1a
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 500
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    .line 501
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    .line 507
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 508
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/ParcelFileDescriptor;

    .line 514
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    .line 515
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    .line 520
    :goto_26
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->startRtt(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 521
    const/4 v5, 0x1

    return v5

    .line 504
    :cond_24
    const/16 v23, 0x0

    .local v23, "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_24

    .line 511
    .end local v23    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_25
    const/16 v28, 0x0

    .local v28, "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_25

    .line 518
    .end local v28    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_26
    const/16 v30, 0x0

    .restart local v30    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_26

    .line 525
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_1b
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 529
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 530
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telecom/Logging/Session$Info;

    .line 535
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telecom/IConnectionService$Stub;->stopRtt(Ljava/lang/String;Landroid/telecom/Logging/Session$Info;)V

    .line 536
    const/4 v5, 0x1

    return v5

    .line 533
    :cond_27
    const/16 v25, 0x0

    .restart local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    goto :goto_27

    .line 540
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v25    # "_arg1":Landroid/telecom/Logging/Session$Info;
    :sswitch_1c
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 544
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    .line 545
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/ParcelFileDescriptor;

    .line 551
    :goto_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    .line 552
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/ParcelFileDescriptor;

    .line 558
    :goto_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    .line 559
    sget-object v5, Landroid/telecom/Logging/Session$Info;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/telecom/Logging/Session$Info;

    .line 564
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v28

    move-object/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telecom/IConnectionService$Stub;->respondToRttUpgradeRequest(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/telecom/Logging/Session$Info;)V

    .line 565
    const/4 v5, 0x1

    return v5

    .line 548
    :cond_28
    const/16 v23, 0x0

    .restart local v23    # "_arg1":Landroid/os/ParcelFileDescriptor;
    goto :goto_28

    .line 555
    .end local v23    # "_arg1":Landroid/os/ParcelFileDescriptor;
    :cond_29
    const/16 v28, 0x0

    .restart local v28    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_29

    .line 562
    .end local v28    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :cond_2a
    const/16 v30, 0x0

    .restart local v30    # "_arg3":Landroid/telecom/Logging/Session$Info;
    goto :goto_2a

    .line 569
    .end local v19    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg3":Landroid/telecom/Logging/Session$Info;
    :sswitch_1d
    const-string/jumbo v5, "com.android.internal.telecom.IConnectionService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 573
    .restart local v19    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 574
    .restart local v7    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telecom/IConnectionService$Stub;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 v5, 0x1

    return v5

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
