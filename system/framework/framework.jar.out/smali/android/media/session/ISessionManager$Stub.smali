.class public abstract Landroid/media/session/ISessionManager$Stub;
.super Landroid/os/Binder;
.source "ISessionManager.java"

# interfaces
.implements Landroid/media/session/ISessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionManager"

.field static final TRANSACTION_addSessionsListener:I = 0x6

.field static final TRANSACTION_createSession:I = 0x1

.field static final TRANSACTION_dispatchAdjustVolume:I = 0x5

.field static final TRANSACTION_dispatchMediaKeyEvent:I = 0x3

.field static final TRANSACTION_dispatchVolumeKeyEvent:I = 0x4

.field static final TRANSACTION_getCurrentMediaButtonPackageName:I = 0xd

.field static final TRANSACTION_getSessions:I = 0x2

.field static final TRANSACTION_isGlobalPriorityActive:I = 0x9

.field static final TRANSACTION_removeSessionsListener:I = 0x7

.field static final TRANSACTION_setCallback:I = 0xa

.field static final TRANSACTION_setOnMediaKeyListener:I = 0xc

.field static final TRANSACTION_setOnVolumeKeyLongPressListener:I = 0xb

.field static final TRANSACTION_setRemoteVolumeController:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.media.session.ISessionManager"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;
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
    const-string/jumbo v1, "android.media.session.ISessionManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/session/ISessionManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/session/ISessionManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/session/ISessionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 25
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

    .line 209
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v24

    return v24

    .line 46
    :sswitch_0
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/16 v24, 0x1

    return v24

    .line 51
    :sswitch_1
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionCallback;

    move-result-object v14

    .line 57
    .local v14, "_arg1":Landroid/media/session/ISessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 59
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 60
    .local v19, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v11, v14, v1, v2}, Landroid/media/session/ISessionManager$Stub;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v20

    .line 61
    .local v20, "_result":Landroid/media/session/ISession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/media/session/ISession;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 63
    const/16 v24, 0x1

    return v24

    .line 62
    :cond_0
    const/16 v24, 0x0

    goto :goto_0

    .line 67
    .end local v11    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Landroid/media/session/ISessionCallback;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_result":Landroid/media/session/ISession;
    :sswitch_2
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_1

    .line 70
    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 76
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 77
    .local v12, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Landroid/media/session/ISessionManager$Stub;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v22

    .line 78
    .local v22, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 80
    const/16 v24, 0x1

    return v24

    .line 73
    .end local v12    # "_arg1":I
    .end local v22    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg0":Landroid/content/ComponentName;
    goto :goto_1

    .line 84
    .end local v4    # "_arg0":Landroid/content/ComponentName;
    :sswitch_3
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_2

    .line 87
    sget-object v24, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    .line 93
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_3

    const/4 v15, 0x1

    .line 94
    .local v15, "_arg1":Z
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v15}, Landroid/media/session/ISessionManager$Stub;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 95
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/16 v24, 0x1

    return v24

    .line 90
    .end local v15    # "_arg1":Z
    :cond_2
    const/4 v10, 0x0

    .local v10, "_arg0":Landroid/view/KeyEvent;
    goto :goto_2

    .line 93
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "_arg1":Z
    goto :goto_3

    .line 100
    .end local v15    # "_arg1":Z
    :sswitch_4
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_4

    .line 103
    sget-object v24, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    .line 109
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 111
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_5

    const/16 v18, 0x1

    .line 112
    .local v18, "_arg2":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v12, v1}, Landroid/media/session/ISessionManager$Stub;->dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    .line 113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    const/16 v24, 0x1

    return v24

    .line 106
    .end local v12    # "_arg1":I
    .end local v18    # "_arg2":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_4

    .line 111
    .end local v10    # "_arg0":Landroid/view/KeyEvent;
    .restart local v12    # "_arg1":I
    :cond_5
    const/16 v18, 0x0

    .restart local v18    # "_arg2":Z
    goto :goto_5

    .line 118
    .end local v12    # "_arg1":I
    .end local v18    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 122
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 124
    .restart local v12    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 125
    .local v16, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v12, v1}, Landroid/media/session/ISessionManager$Stub;->dispatchAdjustVolume(III)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/16 v24, 0x1

    return v24

    .line 131
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":I
    .end local v16    # "_arg2":I
    :sswitch_6
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    .line 135
    .local v6, "_arg0":Landroid/media/session/IActiveSessionsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_6

    .line 136
    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    .line 142
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 143
    .restart local v16    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v6, v13, v1}, Landroid/media/session/ISessionManager$Stub;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/16 v24, 0x1

    return v24

    .line 139
    .end local v16    # "_arg2":I
    :cond_6
    const/4 v13, 0x0

    .local v13, "_arg1":Landroid/content/ComponentName;
    goto :goto_6

    .line 149
    .end local v6    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    .end local v13    # "_arg1":Landroid/content/ComponentName;
    :sswitch_7
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/IActiveSessionsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v6

    .line 152
    .restart local v6    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/session/ISessionManager$Stub;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/16 v24, 0x1

    return v24

    .line 158
    .end local v6    # "_arg0":Landroid/media/session/IActiveSessionsListener;
    :sswitch_8
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/IRemoteVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteVolumeController;

    move-result-object v5

    .line 161
    .local v5, "_arg0":Landroid/media/IRemoteVolumeController;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISessionManager$Stub;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 162
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/16 v24, 0x1

    return v24

    .line 167
    .end local v5    # "_arg0":Landroid/media/IRemoteVolumeController;
    :sswitch_9
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionManager$Stub;->isGlobalPriorityActive()Z

    move-result v23

    .line 169
    .local v23, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v23, :cond_7

    const/16 v24, 0x1

    :goto_7
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/16 v24, 0x1

    return v24

    .line 170
    :cond_7
    const/16 v24, 0x0

    goto :goto_7

    .line 175
    .end local v23    # "_result":Z
    :sswitch_a
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/ICallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ICallback;

    move-result-object v7

    .line 178
    .local v7, "_arg0":Landroid/media/session/ICallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/session/ISessionManager$Stub;->setCallback(Landroid/media/session/ICallback;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    const/16 v24, 0x1

    return v24

    .line 184
    .end local v7    # "_arg0":Landroid/media/session/ICallback;
    :sswitch_b
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/IOnVolumeKeyLongPressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v9

    .line 187
    .local v9, "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/media/session/ISessionManager$Stub;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/16 v24, 0x1

    return v24

    .line 193
    .end local v9    # "_arg0":Landroid/media/session/IOnVolumeKeyLongPressListener;
    :sswitch_c
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/media/session/IOnMediaKeyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v8

    .line 196
    .local v8, "_arg0":Landroid/media/session/IOnMediaKeyListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionManager$Stub;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    const/16 v24, 0x1

    return v24

    .line 202
    .end local v8    # "_arg0":Landroid/media/session/IOnMediaKeyListener;
    :sswitch_d
    const-string/jumbo v24, "android.media.session.ISessionManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionManager$Stub;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v21

    .line 204
    .local v21, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    const/16 v24, 0x1

    return v24

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
