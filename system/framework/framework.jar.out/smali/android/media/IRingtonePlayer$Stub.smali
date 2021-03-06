.class public abstract Landroid/media/IRingtonePlayer$Stub;
.super Landroid/os/Binder;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRingtonePlayer$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IRingtonePlayer"

.field static final TRANSACTION_getTitle:I = 0x7

.field static final TRANSACTION_isPlaying:I = 0x3

.field static final TRANSACTION_openRingtone:I = 0x8

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_playAsync:I = 0x5

.field static final TRANSACTION_setPlaybackProperties:I = 0x4

.field static final TRANSACTION_stop:I = 0x2

.field static final TRANSACTION_stopAsync:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.IRingtonePlayer"

    invoke-virtual {p0, p0, v0}, Landroid/media/IRingtonePlayer$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IRingtonePlayer;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IRingtonePlayer;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IRingtonePlayer$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IRingtonePlayer$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 176
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 45
    :sswitch_0
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x1

    return v1

    .line 50
    :sswitch_1
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 54
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    .line 68
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    .line 70
    .local v5, "_arg3":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    .local v6, "_arg4":Z
    :goto_2
    move-object v1, p0

    .line 71
    invoke-virtual/range {v1 .. v6}, Landroid/media/IRingtonePlayer$Stub;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V

    .line 72
    const/4 v1, 0x1

    return v1

    .line 58
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/net/Uri;
    goto :goto_0

    .line 65
    .end local v3    # "_arg1":Landroid/net/Uri;
    :cond_1
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_1

    .line 70
    .end local v4    # "_arg2":Landroid/media/AudioAttributes;
    .restart local v5    # "_arg3":F
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Z
    goto :goto_2

    .line 76
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg3":F
    .end local v6    # "_arg4":Z
    :sswitch_2
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 79
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->stop(Landroid/os/IBinder;)V

    .line 80
    const/4 v1, 0x1

    return v1

    .line 84
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :sswitch_3
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 87
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v2}, Landroid/media/IRingtonePlayer$Stub;->isPlaying(Landroid/os/IBinder;)Z

    move-result v14

    .line 88
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    if-eqz v14, :cond_3

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v1, 0x1

    return v1

    .line 89
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 94
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v14    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 98
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 100
    .local v8, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    .line 101
    .local v10, "_arg2":Z
    :goto_4
    invoke-virtual {p0, v2, v8, v10}, Landroid/media/IRingtonePlayer$Stub;->setPlaybackProperties(Landroid/os/IBinder;FZ)V

    .line 102
    const/4 v1, 0x1

    return v1

    .line 100
    .end local v10    # "_arg2":Z
    :cond_4
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_4

    .line 106
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":F
    .end local v10    # "_arg2":Z
    :sswitch_5
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 109
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 115
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 116
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    .line 122
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    const/4 v10, 0x1

    .line 124
    .restart local v10    # "_arg2":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    sget-object v1, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioAttributes;

    .line 130
    :goto_8
    invoke-virtual {p0, v7, v9, v10, v11}, Landroid/media/IRingtonePlayer$Stub;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 131
    const/4 v1, 0x1

    return v1

    .line 112
    .end local v10    # "_arg2":Z
    :cond_5
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/net/Uri;
    goto :goto_5

    .line 119
    .end local v7    # "_arg0":Landroid/net/Uri;
    :cond_6
    const/4 v9, 0x0

    .local v9, "_arg1":Landroid/os/UserHandle;
    goto :goto_6

    .line 122
    .end local v9    # "_arg1":Landroid/os/UserHandle;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "_arg2":Z
    goto :goto_7

    .line 128
    :cond_8
    const/4 v11, 0x0

    .local v11, "_arg3":Landroid/media/AudioAttributes;
    goto :goto_8

    .line 135
    .end local v10    # "_arg2":Z
    .end local v11    # "_arg3":Landroid/media/AudioAttributes;
    :sswitch_6
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/media/IRingtonePlayer$Stub;->stopAsync()V

    .line 137
    const/4 v1, 0x1

    return v1

    .line 141
    :sswitch_7
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 144
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 149
    :goto_9
    invoke-virtual {p0, v7}, Landroid/media/IRingtonePlayer$Stub;->getTitle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x1

    return v1

    .line 147
    .end local v13    # "_result":Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    .line 156
    .end local v7    # "_arg0":Landroid/net/Uri;
    :sswitch_8
    const-string/jumbo v1, "android.media.IRingtonePlayer"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 159
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 164
    :goto_a
    invoke-virtual {p0, v7}, Landroid/media/IRingtonePlayer$Stub;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 165
    .local v12, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    if-eqz v12, :cond_b

    .line 167
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v1}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    :goto_b
    const/4 v1, 0x1

    return v1

    .line 162
    .end local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_a
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/net/Uri;
    goto :goto_a

    .line 171
    .end local v7    # "_arg0":Landroid/net/Uri;
    .restart local v12    # "_result":Landroid/os/ParcelFileDescriptor;
    :cond_b
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 41
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
