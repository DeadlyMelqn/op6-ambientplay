.class public abstract Lcom/android/ims/internal/IImsCallSessionListener$Stub;
.super Landroid/os/Binder;
.source "IImsCallSessionListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSessionListener"

.field static final TRANSACTION_callSessionConferenceExtendFailed:I = 0x12

.field static final TRANSACTION_callSessionConferenceExtendReceived:I = 0x13

.field static final TRANSACTION_callSessionConferenceExtended:I = 0x11

.field static final TRANSACTION_callSessionConferenceStateUpdated:I = 0x18

.field static final TRANSACTION_callSessionHandover:I = 0x1a

.field static final TRANSACTION_callSessionHandoverFailed:I = 0x1b

.field static final TRANSACTION_callSessionHeld:I = 0x5

.field static final TRANSACTION_callSessionHoldFailed:I = 0x6

.field static final TRANSACTION_callSessionHoldReceived:I = 0x7

.field static final TRANSACTION_callSessionInviteParticipantsRequestDelivered:I = 0x14

.field static final TRANSACTION_callSessionInviteParticipantsRequestFailed:I = 0x15

.field static final TRANSACTION_callSessionMayHandover:I = 0x1c

.field static final TRANSACTION_callSessionMergeComplete:I = 0xc

.field static final TRANSACTION_callSessionMergeFailed:I = 0xd

.field static final TRANSACTION_callSessionMergeStarted:I = 0xb

.field static final TRANSACTION_callSessionMultipartyStateChanged:I = 0x1e

.field static final TRANSACTION_callSessionProgressing:I = 0x1

.field static final TRANSACTION_callSessionRemoveParticipantsRequestDelivered:I = 0x16

.field static final TRANSACTION_callSessionRemoveParticipantsRequestFailed:I = 0x17

.field static final TRANSACTION_callSessionResumeFailed:I = 0x9

.field static final TRANSACTION_callSessionResumeReceived:I = 0xa

.field static final TRANSACTION_callSessionResumed:I = 0x8

.field static final TRANSACTION_callSessionRttMessageReceived:I = 0x22

.field static final TRANSACTION_callSessionRttModifyRequestReceived:I = 0x20

.field static final TRANSACTION_callSessionRttModifyResponseReceived:I = 0x21

.field static final TRANSACTION_callSessionStartFailed:I = 0x3

.field static final TRANSACTION_callSessionStarted:I = 0x2

.field static final TRANSACTION_callSessionSuppServiceReceived:I = 0x1f

.field static final TRANSACTION_callSessionTerminated:I = 0x4

.field static final TRANSACTION_callSessionTtyModeReceived:I = 0x1d

.field static final TRANSACTION_callSessionUpdateFailed:I = 0xf

.field static final TRANSACTION_callSessionUpdateReceived:I = 0x10

.field static final TRANSACTION_callSessionUpdated:I = 0xe

.field static final TRANSACTION_callSessionUssdMessageReceived:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "com.android.ims.internal.IImsCallSessionListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "com.android.ims.internal.IImsCallSessionListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSessionListener;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/android/ims/internal/IImsCallSessionListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSessionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
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
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 525
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v17

    return v17

    .line 48
    :sswitch_0
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/16 v17, 0x1

    return v17

    .line 53
    :sswitch_1
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 57
    .local v3, "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_0

    .line 58
    sget-object v17, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/ims/ImsStreamMediaProfile;

    .line 63
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionProgressing(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsStreamMediaProfile;)V

    .line 64
    const/16 v17, 0x1

    return v17

    .line 61
    :cond_0
    const/4 v9, 0x0

    .local v9, "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    goto :goto_0

    .line 68
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v9    # "_arg1":Lcom/android/ims/ImsStreamMediaProfile;
    :sswitch_2
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 72
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_1

    .line 73
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 78
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 79
    const/16 v17, 0x1

    return v17

    .line 76
    :cond_1
    const/4 v6, 0x0

    .local v6, "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_1

    .line 83
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_3
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 87
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_2

    .line 88
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 93
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionStartFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 94
    const/16 v17, 0x1

    return v17

    .line 91
    :cond_2
    const/4 v8, 0x0

    .local v8, "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_2

    .line 98
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_4
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 102
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_3

    .line 103
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 108
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTerminated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 109
    const/16 v17, 0x1

    return v17

    .line 106
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_3

    .line 113
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_5
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 117
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_4

    .line 118
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 123
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHeld(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 124
    const/16 v17, 0x1

    return v17

    .line 121
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_4

    .line 128
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_6
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 132
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_5

    .line 133
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 138
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 139
    const/16 v17, 0x1

    return v17

    .line 136
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_5

    .line 143
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_7
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 147
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_6

    .line 148
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 153
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHoldReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 154
    const/16 v17, 0x1

    return v17

    .line 151
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_6

    .line 158
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_8
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 162
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_7

    .line 163
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 168
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 169
    const/16 v17, 0x1

    return v17

    .line 166
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_7

    .line 173
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_9
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 177
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_8

    .line 178
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 183
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 184
    const/16 v17, 0x1

    return v17

    .line 181
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_8

    .line 188
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_a
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 192
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_9

    .line 193
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 198
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionResumeReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 199
    const/16 v17, 0x1

    return v17

    .line 196
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_9

    .line 203
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_b
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 207
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v11

    .line 209
    .local v11, "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_a

    .line 210
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/ims/ImsCallProfile;

    .line 215
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v14}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 216
    const/16 v17, 0x1

    return v17

    .line 213
    :cond_a
    const/4 v14, 0x0

    .local v14, "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_a

    .line 220
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v11    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v14    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_c
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 223
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeComplete(Lcom/android/ims/internal/IImsCallSession;)V

    .line 224
    const/16 v17, 0x1

    return v17

    .line 228
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_d
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 232
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_b

    .line 233
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 238
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMergeFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 239
    const/16 v17, 0x1

    return v17

    .line 236
    :cond_b
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_b

    .line 243
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_e
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 247
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_c

    .line 248
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 253
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 254
    const/16 v17, 0x1

    return v17

    .line 251
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_c

    .line 258
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_f
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 262
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_d

    .line 263
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 268
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 269
    const/16 v17, 0x1

    return v17

    .line 266
    :cond_d
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_d

    .line 273
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_10
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 277
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_e

    .line 278
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 283
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUpdateReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 284
    const/16 v17, 0x1

    return v17

    .line 281
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_e

    .line 288
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_11
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 292
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v11

    .line 294
    .restart local v11    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_f

    .line 295
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/ims/ImsCallProfile;

    .line 300
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v14}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtended(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 301
    const/16 v17, 0x1

    return v17

    .line 298
    :cond_f
    const/4 v14, 0x0

    .restart local v14    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_f

    .line 305
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v11    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v14    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_12
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 309
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_10

    .line 310
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 315
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 316
    const/16 v17, 0x1

    return v17

    .line 313
    :cond_10
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_10

    .line 320
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_13
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 324
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v11

    .line 326
    .restart local v11    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_11

    .line 327
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/ims/ImsCallProfile;

    .line 332
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v14}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceExtendReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 333
    const/16 v17, 0x1

    return v17

    .line 330
    :cond_11
    const/4 v14, 0x0

    .restart local v14    # "_arg2":Lcom/android/ims/ImsCallProfile;
    goto :goto_11

    .line 337
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v11    # "_arg1":Lcom/android/ims/internal/IImsCallSession;
    .end local v14    # "_arg2":Lcom/android/ims/ImsCallProfile;
    :sswitch_14
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 340
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 341
    const/16 v17, 0x1

    return v17

    .line 345
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_15
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 349
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_12

    .line 350
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 355
    :goto_12
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionInviteParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 356
    const/16 v17, 0x1

    return v17

    .line 353
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_12

    .line 360
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_16
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 363
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestDelivered(Lcom/android/ims/internal/IImsCallSession;)V

    .line 364
    const/16 v17, 0x1

    return v17

    .line 368
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    :sswitch_17
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 372
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_13

    .line 373
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ims/ImsReasonInfo;

    .line 378
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRemoveParticipantsRequestFailed(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsReasonInfo;)V

    .line 379
    const/16 v17, 0x1

    return v17

    .line 376
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    goto :goto_13

    .line 383
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v8    # "_arg1":Lcom/android/ims/ImsReasonInfo;
    :sswitch_18
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 387
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_14

    .line 388
    sget-object v17, Lcom/android/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/ims/ImsConferenceState;

    .line 393
    :goto_14
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V

    .line 394
    const/16 v17, 0x1

    return v17

    .line 391
    :cond_14
    const/4 v7, 0x0

    .local v7, "_arg1":Lcom/android/ims/ImsConferenceState;
    goto :goto_14

    .line 398
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v7    # "_arg1":Lcom/android/ims/ImsConferenceState;
    :sswitch_19
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 402
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 404
    .local v5, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 405
    .local v15, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v15}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionUssdMessageReceived(Lcom/android/ims/internal/IImsCallSession;ILjava/lang/String;)V

    .line 406
    const/16 v17, 0x1

    return v17

    .line 410
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 414
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 416
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 418
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_15

    .line 419
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/ims/ImsReasonInfo;

    .line 424
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v5, v13, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandover(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 425
    const/16 v17, 0x1

    return v17

    .line 422
    :cond_15
    const/16 v16, 0x0

    .local v16, "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_15

    .line 429
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v16    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1b
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 433
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 435
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 437
    .restart local v13    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_16

    .line 438
    sget-object v17, Lcom/android/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/ims/ImsReasonInfo;

    .line 443
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v5, v13, v1}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionHandoverFailed(Lcom/android/ims/internal/IImsCallSession;IILcom/android/ims/ImsReasonInfo;)V

    .line 444
    const/16 v17, 0x1

    return v17

    .line 441
    :cond_16
    const/16 v16, 0x0

    .restart local v16    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    goto :goto_16

    .line 448
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":I
    .end local v13    # "_arg2":I
    .end local v16    # "_arg3":Lcom/android/ims/ImsReasonInfo;
    :sswitch_1c
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 452
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 454
    .restart local v5    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 455
    .restart local v13    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v13}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMayHandover(Lcom/android/ims/internal/IImsCallSession;II)V

    .line 456
    const/16 v17, 0x1

    return v17

    .line 460
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":I
    .end local v13    # "_arg2":I
    :sswitch_1d
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 464
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 465
    .restart local v5    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionTtyModeReceived(Lcom/android/ims/internal/IImsCallSession;I)V

    .line 466
    const/16 v17, 0x1

    return v17

    .line 470
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v5    # "_arg1":I
    :sswitch_1e
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 474
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_17

    const/4 v12, 0x1

    .line 475
    .local v12, "_arg1":Z
    :goto_17
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionMultipartyStateChanged(Lcom/android/ims/internal/IImsCallSession;Z)V

    .line 476
    const/16 v17, 0x1

    return v17

    .line 474
    .end local v12    # "_arg1":Z
    :cond_17
    const/4 v12, 0x0

    .restart local v12    # "_arg1":Z
    goto :goto_17

    .line 480
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v12    # "_arg1":Z
    :sswitch_1f
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 484
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_18

    .line 485
    sget-object v17, Lcom/android/ims/ImsSuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/ims/ImsSuppServiceNotification;

    .line 490
    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionSuppServiceReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsSuppServiceNotification;)V

    .line 491
    const/16 v17, 0x1

    return v17

    .line 488
    :cond_18
    const/4 v10, 0x0

    .local v10, "_arg1":Lcom/android/ims/ImsSuppServiceNotification;
    goto :goto_18

    .line 495
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v10    # "_arg1":Lcom/android/ims/ImsSuppServiceNotification;
    :sswitch_20
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 499
    .restart local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    if-eqz v17, :cond_19

    .line 500
    sget-object v17, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/ImsCallProfile;

    .line 505
    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyRequestReceived(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsCallProfile;)V

    .line 506
    const/16 v17, 0x1

    return v17

    .line 503
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    goto :goto_19

    .line 510
    .end local v3    # "_arg0":Lcom/android/ims/internal/IImsCallSession;
    .end local v6    # "_arg1":Lcom/android/ims/ImsCallProfile;
    :sswitch_21
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttModifyResponseReceived(I)V

    .line 514
    const/16 v17, 0x1

    return v17

    .line 518
    .end local v2    # "_arg0":I
    :sswitch_22
    const-string/jumbo v17, "com.android.ims.internal.IImsCallSessionListener"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 521
    .local v4, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 522
    const/16 v17, 0x1

    return v17

    .line 44
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
