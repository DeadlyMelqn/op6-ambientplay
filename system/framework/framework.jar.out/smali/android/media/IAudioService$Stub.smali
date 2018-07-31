.class public abstract Landroid/media/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.IAudioService"

.field static final TRANSACTION_abandonAudioFocus:I = 0x24

.field static final TRANSACTION_adjustStreamVolume:I = 0x2

.field static final TRANSACTION_adjustSuggestedStreamVolume:I = 0x1

.field static final TRANSACTION_avrcpSupportsAbsoluteVolume:I = 0x1c

.field static final TRANSACTION_disableRingtoneSync:I = 0x48

.field static final TRANSACTION_disableSafeMediaVolume:I = 0x37

.field static final TRANSACTION_dispatchFocusChange:I = 0x4a

.field static final TRANSACTION_forceRemoteSubmixFullVolume:I = 0x5

.field static final TRANSACTION_forceVolumeControlStream:I = 0x2a

.field static final TRANSACTION_getActivePlaybackConfigurations:I = 0x43

.field static final TRANSACTION_getActiveRecordingConfigurations:I = 0x40

.field static final TRANSACTION_getCurrentAudioFocus:I = 0x26

.field static final TRANSACTION_getDeviceStreamVolume:I = 0x4e

.field static final TRANSACTION_getFocusRampTimeMs:I = 0x49

.field static final TRANSACTION_getHeadsetNotificationStatus:I = 0x4f

.field static final TRANSACTION_getLastAudibleStreamVolume:I = 0xb

.field static final TRANSACTION_getMode:I = 0x16

.field static final TRANSACTION_getRingerModeExternal:I = 0xf

.field static final TRANSACTION_getRingerModeInternal:I = 0x10

.field static final TRANSACTION_getRingtonePlayer:I = 0x2c

.field static final TRANSACTION_getStreamMaxVolume:I = 0xa

.field static final TRANSACTION_getStreamMinVolume:I = 0x9

.field static final TRANSACTION_getStreamVolume:I = 0x8

.field static final TRANSACTION_getUiSoundsStreamType:I = 0x2d

.field static final TRANSACTION_getVibrateSetting:I = 0x13

.field static final TRANSACTION_handleBluetoothA2dpDeviceConfigChange:I = 0x30

.field static final TRANSACTION_isASBluetoothA2dpOn:I = 0x52

.field static final TRANSACTION_isBluetoothA2dpOn:I = 0x22

.field static final TRANSACTION_isBluetoothScoOn:I = 0x20

.field static final TRANSACTION_isCameraSoundForced:I = 0x32

.field static final TRANSACTION_isHasSpeakerAuthority:I = 0x53

.field static final TRANSACTION_isHdmiSystemAudioSupported:I = 0x39

.field static final TRANSACTION_isMasterMute:I = 0x6

.field static final TRANSACTION_isSpeakerphoneOn:I = 0x1e

.field static final TRANSACTION_isStreamAffectedByMute:I = 0x36

.field static final TRANSACTION_isStreamAffectedByRingerMode:I = 0x35

.field static final TRANSACTION_isStreamMute:I = 0x4

.field static final TRANSACTION_isValidRingerMode:I = 0x11

.field static final TRANSACTION_loadSoundEffects:I = 0x19

.field static final TRANSACTION_notifyVolumeControllerVisible:I = 0x34

.field static final TRANSACTION_playSoundEffect:I = 0x17

.field static final TRANSACTION_playSoundEffectVolume:I = 0x18

.field static final TRANSACTION_playerAttributes:I = 0x45

.field static final TRANSACTION_playerEvent:I = 0x46

.field static final TRANSACTION_playerHasOpPlayAudio:I = 0x4b

.field static final TRANSACTION_registerAudioPolicy:I = 0x3a

.field static final TRANSACTION_registerPlaybackCallback:I = 0x41

.field static final TRANSACTION_registerRecordingCallback:I = 0x3e

.field static final TRANSACTION_releasePlayer:I = 0x47

.field static final TRANSACTION_reloadAudioSettings:I = 0x1b

.field static final TRANSACTION_requestAudioFocus:I = 0x23

.field static final TRANSACTION_setBluetoothA2dpDeviceConnectionState:I = 0x2f

.field static final TRANSACTION_setBluetoothA2dpOn:I = 0x21

.field static final TRANSACTION_setBluetoothCtsScoOn:I = 0x51

.field static final TRANSACTION_setBluetoothScoOn:I = 0x1f

.field static final TRANSACTION_setFocusPropertiesForPolicy:I = 0x3c

.field static final TRANSACTION_setHdmiSystemAudioSupported:I = 0x38

.field static final TRANSACTION_setMasterMute:I = 0x7

.field static final TRANSACTION_setMicrophoneMute:I = 0xc

.field static final TRANSACTION_setMode:I = 0x15

.field static final TRANSACTION_setOnePlusFixedRingerMode:I = 0x4d

.field static final TRANSACTION_setOnePlusRingVolumeRange:I = 0x4c

.field static final TRANSACTION_setRingerModeExternal:I = 0xd

.field static final TRANSACTION_setRingerModeInternal:I = 0xe

.field static final TRANSACTION_setRingtonePlayer:I = 0x2b

.field static final TRANSACTION_setSpeakerphoneOn:I = 0x1d

.field static final TRANSACTION_setStreamVolume:I = 0x3

.field static final TRANSACTION_setVibrateSetting:I = 0x12

.field static final TRANSACTION_setVolumeController:I = 0x33

.field static final TRANSACTION_setVolumePolicy:I = 0x3d

.field static final TRANSACTION_setWiredDeviceConnectionState:I = 0x2e

.field static final TRANSACTION_shouldVibrate:I = 0x14

.field static final TRANSACTION_startBluetoothSco:I = 0x27

.field static final TRANSACTION_startBluetoothScoVirtualCall:I = 0x28

.field static final TRANSACTION_startWatchingRoutes:I = 0x31

.field static final TRANSACTION_stopBluetoothSco:I = 0x29

.field static final TRANSACTION_threeKeySetStreamVolume:I = 0x50

.field static final TRANSACTION_trackPlayer:I = 0x44

.field static final TRANSACTION_unloadSoundEffects:I = 0x1a

.field static final TRANSACTION_unregisterAudioFocusClient:I = 0x25

.field static final TRANSACTION_unregisterAudioPolicyAsync:I = 0x3b

.field static final TRANSACTION_unregisterPlaybackCallback:I = 0x42

.field static final TRANSACTION_unregisterRecordingCallback:I = 0x3f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.media.IAudioService"

    invoke-virtual {p0, p0, v0}, Landroid/media/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;
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
    const-string/jumbo v1, "android.media.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/IAudioService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/media/IAudioService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/IAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 60
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

    .line 956
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 45
    :sswitch_0
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v5, 0x1

    return v5

    .line 50
    :sswitch_1
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 54
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 56
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 58
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "_arg4":Ljava/lang/String;
    move-object/from16 v5, p0

    .line 61
    invoke-virtual/range {v5 .. v10}, Landroid/media/IAudioService$Stub;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v5, 0x1

    return v5

    .line 66
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 70
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 72
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 74
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 75
    .restart local v9    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/media/IAudioService$Stub;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 76
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v5, 0x1

    return v5

    .line 81
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 85
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 87
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 89
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 90
    .restart local v9    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/media/IAudioService$Stub;->setStreamVolume(IIILjava/lang/String;)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v5, 0x1

    return v5

    .line 96
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 99
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->isStreamMute(I)Z

    move-result v59

    .line 100
    .local v59, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v59, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    const/4 v5, 0x1

    return v5

    .line 101
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 106
    .end local v6    # "_arg0":I
    .end local v59    # "_result":Z
    :sswitch_5
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/16 v41, 0x1

    .line 110
    .local v41, "_arg0":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v45

    .line 111
    .local v45, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v5, 0x1

    return v5

    .line 108
    .end local v41    # "_arg0":Z
    .end local v45    # "_arg1":Landroid/os/IBinder;
    :cond_1
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_1

    .line 117
    .end local v41    # "_arg0":Z
    :sswitch_6
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isMasterMute()Z

    move-result v59

    .line 119
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v59, :cond_2

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v5, 0x1

    return v5

    .line 120
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 125
    .end local v59    # "_result":Z
    :sswitch_7
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v41, 0x1

    .line 129
    .restart local v41    # "_arg0":Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 131
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 133
    .local v24, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 134
    .local v51, "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v24

    move/from16 v3, v51

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/media/IAudioService$Stub;->setMasterMute(ZILjava/lang/String;I)V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v5, 0x1

    return v5

    .line 127
    .end local v7    # "_arg1":I
    .end local v24    # "_arg2":Ljava/lang/String;
    .end local v41    # "_arg0":Z
    .end local v51    # "_arg3":I
    :cond_3
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_3

    .line 140
    .end local v41    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 143
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->getStreamVolume(I)I

    move-result v53

    .line 144
    .local v53, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v5, 0x1

    return v5

    .line 150
    .end local v6    # "_arg0":I
    .end local v53    # "_result":I
    :sswitch_9
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 153
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->getStreamMinVolume(I)I

    move-result v53

    .line 154
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v5, 0x1

    return v5

    .line 160
    .end local v6    # "_arg0":I
    .end local v53    # "_result":I
    :sswitch_a
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 163
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->getStreamMaxVolume(I)I

    move-result v53

    .line 164
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v5, 0x1

    return v5

    .line 170
    .end local v6    # "_arg0":I
    .end local v53    # "_result":I
    :sswitch_b
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 173
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->getLastAudibleStreamVolume(I)I

    move-result v53

    .line 174
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v5, 0x1

    return v5

    .line 180
    .end local v6    # "_arg0":I
    .end local v53    # "_result":I
    :sswitch_c
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v41, 0x1

    .line 184
    .restart local v41    # "_arg0":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 186
    .local v46, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 187
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2, v8}, Landroid/media/IAudioService$Stub;->setMicrophoneMute(ZLjava/lang/String;I)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v5, 0x1

    return v5

    .line 182
    .end local v8    # "_arg2":I
    .end local v41    # "_arg0":Z
    .end local v46    # "_arg1":Ljava/lang/String;
    :cond_4
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_4

    .line 193
    .end local v41    # "_arg0":Z
    :sswitch_d
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 197
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 198
    .restart local v46    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->setRingerModeExternal(ILjava/lang/String;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v5, 0x1

    return v5

    .line 204
    .end local v6    # "_arg0":I
    .end local v46    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 208
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 209
    .restart local v46    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->setRingerModeInternal(ILjava/lang/String;)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v5, 0x1

    return v5

    .line 215
    .end local v6    # "_arg0":I
    .end local v46    # "_arg1":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeExternal()I

    move-result v53

    .line 217
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v5, 0x1

    return v5

    .line 223
    .end local v53    # "_result":I
    :sswitch_10
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingerModeInternal()I

    move-result v53

    .line 225
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v5, 0x1

    return v5

    .line 231
    .end local v53    # "_result":I
    :sswitch_11
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 234
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->isValidRingerMode(I)Z

    move-result v59

    .line 235
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    if-eqz v59, :cond_5

    const/4 v5, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    const/4 v5, 0x1

    return v5

    .line 236
    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    .line 241
    .end local v6    # "_arg0":I
    .end local v59    # "_result":Z
    :sswitch_12
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 245
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 246
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/IAudioService$Stub;->setVibrateSetting(II)V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    const/4 v5, 0x1

    return v5

    .line 252
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_13
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 255
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->getVibrateSetting(I)I

    move-result v53

    .line 256
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v5, 0x1

    return v5

    .line 262
    .end local v6    # "_arg0":I
    .end local v53    # "_result":I
    :sswitch_14
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 265
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->shouldVibrate(I)Z

    move-result v59

    .line 266
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    if-eqz v59, :cond_6

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v5, 0x1

    return v5

    .line 267
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 272
    .end local v6    # "_arg0":I
    .end local v59    # "_result":Z
    :sswitch_15
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 276
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v45

    .line 278
    .restart local v45    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 279
    .restart local v24    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/IAudioService$Stub;->setMode(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    const/4 v5, 0x1

    return v5

    .line 285
    .end local v6    # "_arg0":I
    .end local v24    # "_arg2":Ljava/lang/String;
    .end local v45    # "_arg1":Landroid/os/IBinder;
    :sswitch_16
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getMode()I

    move-result v53

    .line 287
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v5, 0x1

    return v5

    .line 293
    .end local v53    # "_result":I
    :sswitch_17
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 296
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->playSoundEffect(I)V

    .line 297
    const/4 v5, 0x1

    return v5

    .line 301
    .end local v6    # "_arg0":I
    :sswitch_18
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 305
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v42

    .line 306
    .local v42, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->playSoundEffectVolume(IF)V

    .line 307
    const/4 v5, 0x1

    return v5

    .line 311
    .end local v6    # "_arg0":I
    .end local v42    # "_arg1":F
    :sswitch_19
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->loadSoundEffects()Z

    move-result v59

    .line 313
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v59, :cond_7

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v5, 0x1

    return v5

    .line 314
    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    .line 319
    .end local v59    # "_result":Z
    :sswitch_1a
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->unloadSoundEffects()V

    .line 321
    const/4 v5, 0x1

    return v5

    .line 325
    :sswitch_1b
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->reloadAudioSettings()V

    .line 327
    const/4 v5, 0x1

    return v5

    .line 331
    :sswitch_1c
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 335
    .local v40, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v47, 0x1

    .line 336
    .local v47, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 337
    const/4 v5, 0x1

    return v5

    .line 335
    .end local v47    # "_arg1":Z
    :cond_8
    const/16 v47, 0x0

    .restart local v47    # "_arg1":Z
    goto :goto_8

    .line 341
    .end local v40    # "_arg0":Ljava/lang/String;
    .end local v47    # "_arg1":Z
    :sswitch_1d
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v41, 0x1

    .line 344
    .restart local v41    # "_arg0":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setSpeakerphoneOn(Z)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    const/4 v5, 0x1

    return v5

    .line 343
    .end local v41    # "_arg0":Z
    :cond_9
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_9

    .line 350
    .end local v41    # "_arg0":Z
    :sswitch_1e
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isSpeakerphoneOn()Z

    move-result v59

    .line 352
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    if-eqz v59, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v5, 0x1

    return v5

    .line 353
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 358
    .end local v59    # "_result":Z
    :sswitch_1f
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    const/16 v41, 0x1

    .line 361
    .restart local v41    # "_arg0":Z
    :goto_b
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothScoOn(Z)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v5, 0x1

    return v5

    .line 360
    .end local v41    # "_arg0":Z
    :cond_b
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_b

    .line 367
    .end local v41    # "_arg0":Z
    :sswitch_20
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothScoOn()Z

    move-result v59

    .line 369
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    if-eqz v59, :cond_c

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v5, 0x1

    return v5

    .line 370
    :cond_c
    const/4 v5, 0x0

    goto :goto_c

    .line 375
    .end local v59    # "_result":Z
    :sswitch_21
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v41, 0x1

    .line 378
    .restart local v41    # "_arg0":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpOn(Z)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    const/4 v5, 0x1

    return v5

    .line 377
    .end local v41    # "_arg0":Z
    :cond_d
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_d

    .line 384
    .end local v41    # "_arg0":Z
    :sswitch_22
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isBluetoothA2dpOn()Z

    move-result v59

    .line 386
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 387
    if-eqz v59, :cond_e

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    const/4 v5, 0x1

    return v5

    .line 387
    :cond_e
    const/4 v5, 0x0

    goto :goto_e

    .line 392
    .end local v59    # "_result":Z
    :sswitch_23
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 395
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioAttributes;

    .line 401
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 403
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 405
    .local v14, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v15

    .line 407
    .local v15, "_arg3":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 409
    .restart local v10    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 411
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 413
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v19

    .line 415
    .local v19, "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "_arg8":I
    move-object/from16 v11, p0

    move v13, v7

    move-object/from16 v16, v10

    .line 416
    invoke-virtual/range {v11 .. v20}, Landroid/media/IAudioService$Stub;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I

    move-result v53

    .line 417
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v5, 0x1

    return v5

    .line 398
    .end local v7    # "_arg1":I
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/IBinder;
    .end local v15    # "_arg3":Landroid/media/IAudioFocusDispatcher;
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v20    # "_arg8":I
    .end local v53    # "_result":I
    :cond_f
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/media/AudioAttributes;
    goto :goto_f

    .line 423
    .end local v12    # "_arg0":Landroid/media/AudioAttributes;
    :sswitch_24
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IAudioFocusDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioFocusDispatcher;

    move-result-object v29

    .line 427
    .local v29, "_arg0":Landroid/media/IAudioFocusDispatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v46

    .line 429
    .restart local v46    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 430
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/media/AudioAttributes;

    .line 436
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 437
    .restart local v9    # "_arg3":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v46

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v9}, Landroid/media/IAudioService$Stub;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v53

    .line 438
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v5, 0x1

    return v5

    .line 433
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v53    # "_result":I
    :cond_10
    const/16 v48, 0x0

    .local v48, "_arg2":Landroid/media/AudioAttributes;
    goto :goto_10

    .line 444
    .end local v29    # "_arg0":Landroid/media/IAudioFocusDispatcher;
    .end local v46    # "_arg1":Ljava/lang/String;
    .end local v48    # "_arg2":Landroid/media/AudioAttributes;
    :sswitch_25
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 447
    .restart local v40    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    const/4 v5, 0x1

    return v5

    .line 453
    .end local v40    # "_arg0":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getCurrentAudioFocus()I

    move-result v53

    .line 455
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v5, 0x1

    return v5

    .line 461
    .end local v53    # "_result":I
    :sswitch_27
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 465
    .local v39, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 466
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v7}, Landroid/media/IAudioService$Stub;->startBluetoothSco(Landroid/os/IBinder;I)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    const/4 v5, 0x1

    return v5

    .line 472
    .end local v7    # "_arg1":I
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_28
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 475
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startBluetoothScoVirtualCall(Landroid/os/IBinder;)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v5, 0x1

    return v5

    .line 481
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v39

    .line 484
    .restart local v39    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->stopBluetoothSco(Landroid/os/IBinder;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    const/4 v5, 0x1

    return v5

    .line 490
    .end local v39    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 494
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v45

    .line 495
    .restart local v45    # "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->forceVolumeControlStream(ILandroid/os/IBinder;)V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v5, 0x1

    return v5

    .line 501
    .end local v6    # "_arg0":I
    .end local v45    # "_arg1":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v33

    .line 504
    .local v33, "_arg0":Landroid/media/IRingtonePlayer;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V

    .line 505
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    const/4 v5, 0x1

    return v5

    .line 510
    .end local v33    # "_arg0":Landroid/media/IRingtonePlayer;
    :sswitch_2c
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v55

    .line 512
    .local v55, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    if-eqz v55, :cond_11

    invoke-interface/range {v55 .. v55}, Landroid/media/IRingtonePlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 514
    const/4 v5, 0x1

    return v5

    .line 513
    :cond_11
    const/4 v5, 0x0

    goto :goto_11

    .line 518
    .end local v55    # "_result":Landroid/media/IRingtonePlayer;
    :sswitch_2d
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getUiSoundsStreamType()I

    move-result v53

    .line 520
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v5, 0x1

    return v5

    .line 526
    .end local v53    # "_result":I
    :sswitch_2e
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 530
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 532
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 534
    .restart local v24    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 536
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "_arg4":Ljava/lang/String;
    move-object/from16 v21, p0

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    .line 537
    invoke-virtual/range {v21 .. v26}, Landroid/media/IAudioService$Stub;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    const/4 v5, 0x1

    return v5

    .line 543
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v24    # "_arg2":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 546
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/bluetooth/BluetoothDevice;

    .line 552
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 554
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 555
    .restart local v8    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v7, v8}, Landroid/media/IAudioService$Stub;->setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I

    move-result v53

    .line 556
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    const/4 v5, 0x1

    return v5

    .line 549
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v53    # "_result":I
    :cond_12
    const/16 v27, 0x0

    .local v27, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_12

    .line 562
    .end local v27    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_30
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 565
    sget-object v5, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/bluetooth/BluetoothDevice;

    .line 570
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    const/4 v5, 0x1

    return v5

    .line 568
    :cond_13
    const/16 v27, 0x0

    .restart local v27    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 576
    .end local v27    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_31
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IAudioRoutesObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioRoutesObserver;

    move-result-object v30

    .line 579
    .local v30, "_arg0":Landroid/media/IAudioRoutesObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;

    move-result-object v54

    .line 580
    .local v54, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v54, :cond_14

    .line 582
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    const/4 v5, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/media/AudioRoutesInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 588
    :goto_14
    const/4 v5, 0x1

    return v5

    .line 586
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 592
    .end local v30    # "_arg0":Landroid/media/IAudioRoutesObserver;
    .end local v54    # "_result":Landroid/media/AudioRoutesInfo;
    :sswitch_32
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isCameraSoundForced()Z

    move-result v59

    .line 594
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    if-eqz v59, :cond_15

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v5, 0x1

    return v5

    .line 595
    :cond_15
    const/4 v5, 0x0

    goto :goto_15

    .line 600
    .end local v59    # "_result":Z
    :sswitch_33
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v34

    .line 603
    .local v34, "_arg0":Landroid/media/IVolumeController;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    const/4 v5, 0x1

    return v5

    .line 609
    .end local v34    # "_arg0":Landroid/media/IVolumeController;
    :sswitch_34
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IVolumeController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IVolumeController;

    move-result-object v34

    .line 613
    .restart local v34    # "_arg0":Landroid/media/IVolumeController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v47, 0x1

    .line 614
    .restart local v47    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/media/IAudioService$Stub;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v5, 0x1

    return v5

    .line 613
    .end local v47    # "_arg1":Z
    :cond_16
    const/16 v47, 0x0

    .restart local v47    # "_arg1":Z
    goto :goto_16

    .line 620
    .end local v34    # "_arg0":Landroid/media/IVolumeController;
    .end local v47    # "_arg1":Z
    :sswitch_35
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 623
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->isStreamAffectedByRingerMode(I)Z

    move-result v59

    .line 624
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    if-eqz v59, :cond_17

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v5, 0x1

    return v5

    .line 625
    :cond_17
    const/4 v5, 0x0

    goto :goto_17

    .line 630
    .end local v6    # "_arg0":I
    .end local v59    # "_result":Z
    :sswitch_36
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 633
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->isStreamAffectedByMute(I)Z

    move-result v59

    .line 634
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v59, :cond_18

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v5, 0x1

    return v5

    .line 635
    :cond_18
    const/4 v5, 0x0

    goto :goto_18

    .line 640
    .end local v6    # "_arg0":I
    .end local v59    # "_result":Z
    :sswitch_37
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 643
    .restart local v40    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->disableSafeMediaVolume(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    const/4 v5, 0x1

    return v5

    .line 649
    .end local v40    # "_arg0":Ljava/lang/String;
    :sswitch_38
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v41, 0x1

    .line 652
    .restart local v41    # "_arg0":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setHdmiSystemAudioSupported(Z)I

    move-result v53

    .line 653
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v5, 0x1

    return v5

    .line 651
    .end local v41    # "_arg0":Z
    .end local v53    # "_result":I
    :cond_19
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_19

    .line 659
    .end local v41    # "_arg0":Z
    :sswitch_39
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isHdmiSystemAudioSupported()Z

    move-result v59

    .line 661
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v59, :cond_1a

    const/4 v5, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v5, 0x1

    return v5

    .line 662
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1a

    .line 667
    .end local v59    # "_result":Z
    :sswitch_3a
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 670
    sget-object v5, Landroid/media/audiopolicy/AudioPolicyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/media/audiopolicy/AudioPolicyConfig;

    .line 676
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v44

    .line 678
    .local v44, "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v50, 0x1

    .line 680
    .local v50, "_arg2":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v52, 0x1

    .line 681
    .local v52, "_arg3":Z
    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v44

    move/from16 v3, v50

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/IAudioService$Stub;->registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZ)Ljava/lang/String;

    move-result-object v56

    .line 682
    .local v56, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    move-object/from16 v0, p3

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    const/4 v5, 0x1

    return v5

    .line 673
    .end local v44    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v50    # "_arg2":Z
    .end local v52    # "_arg3":Z
    .end local v56    # "_result":Ljava/lang/String;
    :cond_1b
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    goto :goto_1b

    .line 678
    .end local v37    # "_arg0":Landroid/media/audiopolicy/AudioPolicyConfig;
    .restart local v44    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_1c
    const/16 v50, 0x0

    .restart local v50    # "_arg2":Z
    goto :goto_1c

    .line 680
    :cond_1d
    const/16 v52, 0x0

    .restart local v52    # "_arg3":Z
    goto :goto_1d

    .line 688
    .end local v44    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v50    # "_arg2":Z
    .end local v52    # "_arg3":Z
    :sswitch_3b
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v38

    .line 691
    .local v38, "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 692
    const/4 v5, 0x1

    return v5

    .line 696
    .end local v38    # "_arg0":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :sswitch_3c
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 700
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v44

    .line 701
    .restart local v44    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v53

    .line 702
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    const/4 v5, 0x1

    return v5

    .line 708
    .end local v6    # "_arg0":I
    .end local v44    # "_arg1":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v53    # "_result":I
    :sswitch_3d
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 711
    sget-object v5, Landroid/media/VolumePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/media/VolumePolicy;

    .line 716
    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    const/4 v5, 0x1

    return v5

    .line 714
    :cond_1e
    const/16 v36, 0x0

    .local v36, "_arg0":Landroid/media/VolumePolicy;
    goto :goto_1e

    .line 722
    .end local v36    # "_arg0":Landroid/media/VolumePolicy;
    :sswitch_3e
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v32

    .line 725
    .local v32, "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v5, 0x1

    return v5

    .line 731
    .end local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_3f
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IRecordingConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRecordingConfigDispatcher;

    move-result-object v32

    .line 734
    .restart local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 735
    const/4 v5, 0x1

    return v5

    .line 739
    .end local v32    # "_arg0":Landroid/media/IRecordingConfigDispatcher;
    :sswitch_40
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object v58

    .line 741
    .local v58, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 743
    const/4 v5, 0x1

    return v5

    .line 747
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :sswitch_41
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v31

    .line 750
    .local v31, "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v5, 0x1

    return v5

    .line 756
    .end local v31    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :sswitch_42
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/IPlaybackConfigDispatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IPlaybackConfigDispatcher;

    move-result-object v31

    .line 759
    .restart local v31    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 760
    const/4 v5, 0x1

    return v5

    .line 764
    .end local v31    # "_arg0":Landroid/media/IPlaybackConfigDispatcher;
    :sswitch_43
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 765
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v57

    .line 766
    .local v57, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 767
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 768
    const/4 v5, 0x1

    return v5

    .line 772
    .end local v57    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :sswitch_44
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 775
    sget-object v5, Landroid/media/PlayerBase$PlayerIdCard;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/media/PlayerBase$PlayerIdCard;

    .line 780
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v53

    .line 781
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    const/4 v5, 0x1

    return v5

    .line 778
    .end local v53    # "_result":I
    :cond_1f
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    goto :goto_1f

    .line 787
    .end local v35    # "_arg0":Landroid/media/PlayerBase$PlayerIdCard;
    :sswitch_45
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 791
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 792
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/media/AudioAttributes;

    .line 797
    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->playerAttributes(ILandroid/media/AudioAttributes;)V

    .line 798
    const/4 v5, 0x1

    return v5

    .line 795
    :cond_20
    const/16 v43, 0x0

    .local v43, "_arg1":Landroid/media/AudioAttributes;
    goto :goto_20

    .line 802
    .end local v6    # "_arg0":I
    .end local v43    # "_arg1":Landroid/media/AudioAttributes;
    :sswitch_46
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 806
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 807
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/IAudioService$Stub;->playerEvent(II)V

    .line 808
    const/4 v5, 0x1

    return v5

    .line 812
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_47
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 815
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->releasePlayer(I)V

    .line 816
    const/4 v5, 0x1

    return v5

    .line 820
    .end local v6    # "_arg0":I
    :sswitch_48
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 823
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->disableRingtoneSync(I)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v5, 0x1

    return v5

    .line 829
    .end local v6    # "_arg0":I
    :sswitch_49
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 833
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    .line 834
    sget-object v5, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/media/AudioAttributes;

    .line 839
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v53

    .line 840
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v5, 0x1

    return v5

    .line 837
    .end local v53    # "_result":I
    :cond_21
    const/16 v43, 0x0

    .restart local v43    # "_arg1":Landroid/media/AudioAttributes;
    goto :goto_21

    .line 846
    .end local v6    # "_arg0":I
    .end local v43    # "_arg1":Landroid/media/AudioAttributes;
    :sswitch_4a
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    .line 849
    sget-object v5, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/media/AudioFocusInfo;

    .line 855
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 857
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/audiopolicy/IAudioPolicyCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/audiopolicy/IAudioPolicyCallback;

    move-result-object v49

    .line 858
    .local v49, "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v7, v2}, Landroid/media/IAudioService$Stub;->dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I

    move-result v53

    .line 859
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    const/4 v5, 0x1

    return v5

    .line 852
    .end local v7    # "_arg1":I
    .end local v49    # "_arg2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    .end local v53    # "_result":I
    :cond_22
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/media/AudioFocusInfo;
    goto :goto_22

    .line 865
    .end local v28    # "_arg0":Landroid/media/AudioFocusInfo;
    :sswitch_4b
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 869
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v47, 0x1

    .line 870
    .restart local v47    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v6, v1}, Landroid/media/IAudioService$Stub;->playerHasOpPlayAudio(IZ)V

    .line 871
    const/4 v5, 0x1

    return v5

    .line 869
    .end local v47    # "_arg1":Z
    :cond_23
    const/16 v47, 0x0

    .restart local v47    # "_arg1":Z
    goto :goto_23

    .line 875
    .end local v6    # "_arg0":I
    .end local v47    # "_arg1":Z
    :sswitch_4c
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 879
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 880
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/IAudioService$Stub;->setOnePlusRingVolumeRange(II)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v5, 0x1

    return v5

    .line 886
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    :sswitch_4d
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 889
    .restart local v6    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/IAudioService$Stub;->setOnePlusFixedRingerMode(I)V

    .line 890
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    const/4 v5, 0x1

    return v5

    .line 895
    .end local v6    # "_arg0":I
    :sswitch_4e
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 899
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 900
    .restart local v7    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/IAudioService$Stub;->getDeviceStreamVolume(II)I

    move-result v53

    .line 901
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 902
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    const/4 v5, 0x1

    return v5

    .line 907
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v53    # "_result":I
    :sswitch_4f
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->getHeadsetNotificationStatus()I

    move-result v53

    .line 909
    .restart local v53    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    const/4 v5, 0x1

    return v5

    .line 915
    .end local v53    # "_result":I
    :sswitch_50
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 919
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 921
    .restart local v7    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 923
    .restart local v8    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 924
    .restart local v51    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v6, v7, v8, v1}, Landroid/media/IAudioService$Stub;->threeKeySetStreamVolume(IIII)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v5, 0x1

    return v5

    .line 930
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":I
    .end local v51    # "_arg3":I
    :sswitch_51
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v41, 0x1

    .line 933
    .restart local v41    # "_arg0":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->setBluetoothCtsScoOn(Z)V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    const/4 v5, 0x1

    return v5

    .line 932
    .end local v41    # "_arg0":Z
    :cond_24
    const/16 v41, 0x0

    .restart local v41    # "_arg0":Z
    goto :goto_24

    .line 939
    .end local v41    # "_arg0":Z
    :sswitch_52
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/media/IAudioService$Stub;->isASBluetoothA2dpOn()Z

    move-result v59

    .line 941
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v59, :cond_25

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v5, 0x1

    return v5

    .line 942
    :cond_25
    const/4 v5, 0x0

    goto :goto_25

    .line 947
    .end local v59    # "_result":Z
    :sswitch_53
    const-string/jumbo v5, "android.media.IAudioService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v40

    .line 950
    .restart local v40    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/media/IAudioService$Stub;->isHasSpeakerAuthority(Ljava/lang/String;)Z

    move-result v59

    .line 951
    .restart local v59    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    if-eqz v59, :cond_26

    const/4 v5, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    const/4 v5, 0x1

    return v5

    .line 952
    :cond_26
    const/4 v5, 0x0

    goto :goto_26

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
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
