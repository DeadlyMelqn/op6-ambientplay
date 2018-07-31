.class public Landroid/media/AudioSystem;
.super Ljava/lang/Object;
.source "AudioSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioSystem$AudioRecordingCallback;,
        Landroid/media/AudioSystem$DynamicPolicyCallback;,
        Landroid/media/AudioSystem$ErrorCallback;
    }
.end annotation


# static fields
.field public static final AUDIO_HW_SYNC_INVALID:I = 0x0

.field public static final AUDIO_SESSION_ALLOCATE:I = 0x0

.field public static final AUDIO_STATUS_ERROR:I = 0x1

.field public static final AUDIO_STATUS_OK:I = 0x0

.field public static final AUDIO_STATUS_SERVER_DIED:I = 0x64

.field public static final BAD_VALUE:I = -0x2

.field public static final DEAD_OBJECT:I = -0x6

.field public static final DEFAULT_MUTE_STREAMS_AFFECTED:I = 0x2e

.field public static DEFAULT_STREAM_VOLUME:[I = null

.field public static final DEVICE_ALL_HDMI_SYSTEM_AUDIO_AND_SPEAKER:I = 0x2c0002

.field public static final DEVICE_BIT_DEFAULT:I = 0x40000000

.field public static final DEVICE_BIT_IN:I = -0x80000000

.field public static final DEVICE_IN_ALL:I = -0x3ce00001

.field public static final DEVICE_IN_ALL_SCO:I = -0x7ffffff8

.field public static final DEVICE_IN_ALL_USB:I = -0x7dffe800

.field public static final DEVICE_IN_AMBIENT:I = -0x7ffffffe

.field public static final DEVICE_IN_AMBIENT_NAME:Ljava/lang/String; = "ambient"

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET:I = -0x7ffffe00

.field public static final DEVICE_IN_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_IN_AUX_DIGITAL:I = -0x7fffffe0

.field public static final DEVICE_IN_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_IN_BACK_MIC:I = -0x7fffff80

.field public static final DEVICE_IN_BACK_MIC_NAME:Ljava/lang/String; = "back_mic"

.field public static final DEVICE_IN_BLUETOOTH_A2DP:I = -0x7ffe0000

.field public static final DEVICE_IN_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET:I = -0x7ffffff8

.field public static final DEVICE_IN_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_IN_BUILTIN_MIC:I = -0x7ffffffc

.field public static final DEVICE_IN_BUILTIN_MIC_NAME:Ljava/lang/String; = "mic"

.field public static final DEVICE_IN_BUS:I = -0x7ff00000

.field public static final DEVICE_IN_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_IN_COMMUNICATION:I = -0x7fffffff

.field public static final DEVICE_IN_COMMUNICATION_NAME:Ljava/lang/String; = "communication"

.field public static final DEVICE_IN_DEFAULT:I = -0x40000000

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET:I = -0x7ffffc00

.field public static final DEVICE_IN_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_IN_FM_TUNER:I = -0x7fffe000

.field public static final DEVICE_IN_FM_TUNER_NAME:Ljava/lang/String; = "fm_tuner"

.field public static final DEVICE_IN_HDMI:I = -0x7fffffe0

.field public static final DEVICE_IN_IP:I = -0x7ff80000

.field public static final DEVICE_IN_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_IN_LINE:I = -0x7fff8000

.field public static final DEVICE_IN_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_IN_LOOPBACK:I = -0x7ffc0000

.field public static final DEVICE_IN_LOOPBACK_NAME:Ljava/lang/String; = "loopback"

.field public static final DEVICE_IN_PROXY:I = -0x7f000000

.field public static final DEVICE_IN_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_IN_REMOTE_SUBMIX:I = -0x7fffff00

.field public static final DEVICE_IN_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_IN_SPDIF:I = -0x7fff0000

.field public static final DEVICE_IN_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_IN_TELEPHONY_RX:I = -0x7fffffc0

.field public static final DEVICE_IN_TELEPHONY_RX_NAME:Ljava/lang/String; = "telephony_rx"

.field public static final DEVICE_IN_TV_TUNER:I = -0x7fffc000

.field public static final DEVICE_IN_TV_TUNER_NAME:Ljava/lang/String; = "tv_tuner"

.field public static final DEVICE_IN_USB_ACCESSORY:I = -0x7ffff800

.field public static final DEVICE_IN_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_IN_USB_DEVICE:I = -0x7ffff000

.field public static final DEVICE_IN_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_IN_USB_HEADSET:I = -0x7e000000

.field public static final DEVICE_IN_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_IN_VOICE_CALL:I = -0x7fffffc0

.field public static final DEVICE_IN_WIRED_HEADSET:I = -0x7ffffff0

.field public static final DEVICE_IN_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_NONE:I = 0x0

.field public static final DEVICE_OUT_ALL:I = 0x47ffffff

.field public static final DEVICE_OUT_ALL_A2DP:I = 0x380

.field public static final DEVICE_OUT_ALL_HDMI_SYSTEM_AUDIO:I = 0x2c0000

.field public static final DEVICE_OUT_ALL_SCO:I = 0x70

.field public static final DEVICE_OUT_ALL_USB:I = 0x4006000

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET:I = 0x800

.field public static final DEVICE_OUT_ANLG_DOCK_HEADSET_NAME:Ljava/lang/String; = "analog_dock"

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_AUX_DIGITAL_NAME:Ljava/lang/String; = "aux_digital"

.field public static final DEVICE_OUT_AUX_LINE:I = 0x200000

.field public static final DEVICE_OUT_AUX_LINE_NAME:Ljava/lang/String; = "aux_line"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES_NAME:Ljava/lang/String; = "bt_a2dp_hp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_NAME:Ljava/lang/String; = "bt_a2dp"

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER_NAME:Ljava/lang/String; = "bt_a2dp_spk"

.field public static final DEVICE_OUT_BLUETOOTH_SCO:I = 0x10

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT:I = 0x40

.field public static final DEVICE_OUT_BLUETOOTH_SCO_CARKIT_NAME:Ljava/lang/String; = "bt_sco_carkit"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET:I = 0x20

.field public static final DEVICE_OUT_BLUETOOTH_SCO_HEADSET_NAME:Ljava/lang/String; = "bt_sco_hs"

.field public static final DEVICE_OUT_BLUETOOTH_SCO_NAME:Ljava/lang/String; = "bt_sco"

.field public static final DEVICE_OUT_BUS:I = 0x1000000

.field public static final DEVICE_OUT_BUS_NAME:Ljava/lang/String; = "bus"

.field public static final DEVICE_OUT_DEFAULT:I = 0x40000000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET:I = 0x1000

.field public static final DEVICE_OUT_DGTL_DOCK_HEADSET_NAME:Ljava/lang/String; = "digital_dock"

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_EARPIECE_NAME:Ljava/lang/String; = "earpiece"

.field public static final DEVICE_OUT_FM:I = 0x100000

.field public static final DEVICE_OUT_FM_NAME:Ljava/lang/String; = "fm_transmitter"

.field public static final DEVICE_OUT_HDMI:I = 0x400

.field public static final DEVICE_OUT_HDMI_ARC:I = 0x40000

.field public static final DEVICE_OUT_HDMI_ARC_NAME:Ljava/lang/String; = "hmdi_arc"

.field public static final DEVICE_OUT_HDMI_NAME:Ljava/lang/String; = "hdmi"

.field public static final DEVICE_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_IP_NAME:Ljava/lang/String; = "ip"

.field public static final DEVICE_OUT_LINE:I = 0x20000

.field public static final DEVICE_OUT_LINE_NAME:Ljava/lang/String; = "line"

.field public static final DEVICE_OUT_PROXY:I = 0x2000000

.field public static final DEVICE_OUT_PROXY_NAME:Ljava/lang/String; = "proxy"

.field public static final DEVICE_OUT_REMOTE_SUBMIX:I = 0x8000

.field public static final DEVICE_OUT_REMOTE_SUBMIX_NAME:Ljava/lang/String; = "remote_submix"

.field public static final DEVICE_OUT_SPDIF:I = 0x80000

.field public static final DEVICE_OUT_SPDIF_NAME:Ljava/lang/String; = "spdif"

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_SPEAKER_NAME:Ljava/lang/String; = "speaker"

.field public static final DEVICE_OUT_SPEAKER_SAFE:I = 0x400000

.field public static final DEVICE_OUT_SPEAKER_SAFE_NAME:Ljava/lang/String; = "speaker_safe"

.field public static final DEVICE_OUT_TELEPHONY_TX:I = 0x10000

.field public static final DEVICE_OUT_TELEPHONY_TX_NAME:Ljava/lang/String; = "telephony_tx"

.field public static final DEVICE_OUT_USB_ACCESSORY:I = 0x2000

.field public static final DEVICE_OUT_USB_ACCESSORY_NAME:Ljava/lang/String; = "usb_accessory"

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_DEVICE_NAME:Ljava/lang/String; = "usb_device"

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_USB_HEADSET_NAME:Ljava/lang/String; = "usb_headset"

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADPHONE_NAME:Ljava/lang/String; = "headphone"

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field public static final DEVICE_OUT_WIRED_HEADSET_NAME:Ljava/lang/String; = "headset"

.field public static final DEVICE_STATE_AVAILABLE:I = 0x1

.field public static final DEVICE_STATE_UNAVAILABLE:I = 0x0

.field private static final DYNAMIC_POLICY_EVENT_MIX_STATE_UPDATE:I = 0x0

.field public static final ERROR:I = -0x1

.field public static final FORCE_ANALOG_DOCK:I = 0x8

.field public static final FORCE_BT_A2DP:I = 0x4

.field public static final FORCE_BT_CAR_DOCK:I = 0x6

.field public static final FORCE_BT_DESK_DOCK:I = 0x7

.field public static final FORCE_BT_SCO:I = 0x3

.field public static final FORCE_DEFAULT:I = 0x0

.field public static final FORCE_DIGITAL_DOCK:I = 0x9

.field public static final FORCE_ENCODED_SURROUND_ALWAYS:I = 0xe

.field public static final FORCE_ENCODED_SURROUND_NEVER:I = 0xd

.field public static final FORCE_HDMI_SYSTEM_AUDIO_ENFORCED:I = 0xc

.field public static final FORCE_HEADPHONES:I = 0x2

.field public static final FORCE_NONE:I = 0x0

.field public static final FORCE_NO_BT_A2DP:I = 0xa

.field public static final FORCE_SPEAKER:I = 0x1

.field public static final FORCE_SYSTEM_ENFORCED:I = 0xb

.field public static final FORCE_WIRED_ACCESSORY:I = 0x5

.field public static final FOR_COMMUNICATION:I = 0x0

.field public static final FOR_DOCK:I = 0x3

.field public static final FOR_ENCODED_SURROUND:I = 0x6

.field public static final FOR_HDMI_SYSTEM_AUDIO:I = 0x5

.field public static final FOR_MEDIA:I = 0x1

.field public static final FOR_NOTICATION:I = 0x7

.field public static final FOR_RECORD:I = 0x2

.field public static final FOR_SYSTEM:I = 0x4

.field public static final INVALID_OPERATION:I = -0x3

.field public static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field public static final MODE_CURRENT:I = -0x1

.field public static final MODE_INVALID:I = -0x2

.field public static final MODE_IN_CALL:I = 0x2

.field public static final MODE_IN_COMMUNICATION:I = 0x3

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_RINGTONE:I = 0x1

.field static final NATIVE_EVENT_ROUTING_CHANGE:I = 0x3e8

.field public static final NO_INIT:I = -0x5

.field private static final NUM_DEVICE_STATES:I = 0x1

.field public static final NUM_FORCE_CONFIG:I = 0xf

.field private static final NUM_FORCE_USE:I = 0x8

.field public static final NUM_MODES:I = 0x4

.field public static final NUM_STREAMS:I = 0x5

.field private static final NUM_STREAM_TYPES:I = 0xb

.field public static final PERMISSION_DENIED:I = -0x4

.field public static final PHONE_STATE_INCALL:I = 0x2

.field public static final PHONE_STATE_OFFCALL:I = 0x0

.field public static final PHONE_STATE_RINGING:I = 0x1

.field public static final PLATFORM_DEFAULT:I = 0x0

.field public static final PLATFORM_TELEVISION:I = 0x2

.field public static final PLATFORM_VOICE:I = 0x1

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field public static final ROUTE_ALL:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_A2DP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_BLUETOOTH_SCO:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_EARPIECE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_HEADSET:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ROUTE_SPEAKER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STREAM_ACCESSIBILITY:I = 0xa

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_BLUETOOTH_SCO:I = 0x6

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final STREAM_DTMF:I = 0x8

.field public static final STREAM_MUSIC:I = 0x3

.field public static final STREAM_NAMES:[Ljava/lang/String;

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field public static final STREAM_SYSTEM:I = 0x1

.field public static final STREAM_SYSTEM_ENFORCED:I = 0x7

.field public static final STREAM_TTS:I = 0x9

.field public static final STREAM_VOICE_CALL:I = 0x0

.field public static final SUCCESS:I = 0x0

.field public static final SYNC_EVENT_NONE:I = 0x0

.field public static final SYNC_EVENT_PRESENTATION_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioSystem"

.field public static final WOULD_BLOCK:I = -0x7

.field private static mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private static sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private static sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "STREAM_VOICE_CALL"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "STREAM_SYSTEM"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    const-string/jumbo v1, "STREAM_RING"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "STREAM_MUSIC"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "STREAM_ALARM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "STREAM_NOTIFICATION"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "STREAM_BLUETOOTH_SCO"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "STREAM_SYSTEM_ENFORCED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "STREAM_DTMF"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "STREAM_TTS"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "STREAM_ACCESSIBILITY"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 77
    sput-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    .line 880
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    .line 34
    return-void

    .line 880
    nop

    :array_0
    .array-data 4
        0x4
        0x7
        0x5
        0xf
        0x6
        0x5
        0x7
        0x7
        0x5
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkAudioFlinger()I
.end method

.method public static native createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I
.end method

.method public static deviceStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "state"    # I

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_0

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 527
    :pswitch_0
    const-string/jumbo v0, "DEVICE_STATE_UNAVAILABLE"

    return-object v0

    .line 528
    :pswitch_1
    const-string/jumbo v0, "DEVICE_STATE_AVAILABLE"

    return-object v0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static dynamicPolicyCallbackFromNative(ILjava/lang/String;I)V
    .locals 4
    .param p0, "event"    # I
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "val"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    .line 290
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    if-eqz v1, :cond_0

    .line 291
    sget-object v0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :cond_0
    monitor-exit v2

    .line 294
    if-eqz v0, :cond_1

    .line 295
    packed-switch p0, :pswitch_data_0

    .line 300
    const-string/jumbo v1, "AudioSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dynamicPolicyCallbackFromNative: unknown event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    :goto_0
    return-void

    .line 289
    .restart local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 297
    .end local v0    # "cb":Landroid/media/AudioSystem$DynamicPolicyCallback;
    :pswitch_0
    invoke-interface {v0, p1, p2}, Landroid/media/AudioSystem$DynamicPolicyCallback;->onDynamicPolicyMixStateUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static errorCallbackFromNative(I)V
    .locals 3
    .param p0, "error"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    const-class v2, Landroid/media/AudioSystem;

    monitor-enter v2

    .line 255
    :try_start_0
    sget-object v1, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    if-eqz v1, :cond_0

    .line 256
    sget-object v0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :cond_0
    monitor-exit v2

    .line 259
    if-eqz v0, :cond_1

    .line 260
    invoke-interface {v0, p0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V

    .line 262
    :cond_1
    return-void

    .line 254
    .restart local v0    # "errorCallback":Landroid/media/AudioSystem$ErrorCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static forceUseConfigToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "config"    # I

    .prologue
    .line 729
    packed-switch p0, :pswitch_data_0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown config ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 730
    :pswitch_0
    const-string/jumbo v0, "FORCE_NONE"

    return-object v0

    .line 731
    :pswitch_1
    const-string/jumbo v0, "FORCE_SPEAKER"

    return-object v0

    .line 732
    :pswitch_2
    const-string/jumbo v0, "FORCE_HEADPHONES"

    return-object v0

    .line 733
    :pswitch_3
    const-string/jumbo v0, "FORCE_BT_SCO"

    return-object v0

    .line 734
    :pswitch_4
    const-string/jumbo v0, "FORCE_BT_A2DP"

    return-object v0

    .line 735
    :pswitch_5
    const-string/jumbo v0, "FORCE_WIRED_ACCESSORY"

    return-object v0

    .line 736
    :pswitch_6
    const-string/jumbo v0, "FORCE_BT_CAR_DOCK"

    return-object v0

    .line 737
    :pswitch_7
    const-string/jumbo v0, "FORCE_BT_DESK_DOCK"

    return-object v0

    .line 738
    :pswitch_8
    const-string/jumbo v0, "FORCE_ANALOG_DOCK"

    return-object v0

    .line 739
    :pswitch_9
    const-string/jumbo v0, "FORCE_DIGITAL_DOCK"

    return-object v0

    .line 740
    :pswitch_a
    const-string/jumbo v0, "FORCE_NO_BT_A2DP"

    return-object v0

    .line 741
    :pswitch_b
    const-string/jumbo v0, "FORCE_SYSTEM_ENFORCED"

    return-object v0

    .line 742
    :pswitch_c
    const-string/jumbo v0, "FORCE_HDMI_SYSTEM_AUDIO_ENFORCED"

    return-object v0

    .line 743
    :pswitch_d
    const-string/jumbo v0, "FORCE_ENCODED_SURROUND_NEVER"

    return-object v0

    .line 744
    :pswitch_e
    const-string/jumbo v0, "FORCE_ENCODED_SURROUND_ALWAYS"

    return-object v0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static forceUseUsageToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "usage"    # I

    .prologue
    .line 764
    packed-switch p0, :pswitch_data_0

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown usage ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 765
    :pswitch_0
    const-string/jumbo v0, "FOR_COMMUNICATION"

    return-object v0

    .line 766
    :pswitch_1
    const-string/jumbo v0, "FOR_MEDIA"

    return-object v0

    .line 767
    :pswitch_2
    const-string/jumbo v0, "FOR_RECORD"

    return-object v0

    .line 768
    :pswitch_3
    const-string/jumbo v0, "FOR_DOCK"

    return-object v0

    .line 769
    :pswitch_4
    const-string/jumbo v0, "FOR_SYSTEM"

    return-object v0

    .line 770
    :pswitch_5
    const-string/jumbo v0, "FOR_HDMI_SYSTEM_AUDIO"

    return-object v0

    .line 771
    :pswitch_6
    const-string/jumbo v0, "FOR_ENCODED_SURROUND"

    return-object v0

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static native getAudioHwSyncForSession(I)I
.end method

.method public static getDefaultStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 877
    sget-object v0, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method public static native getDeviceConnectionState(ILjava/lang/String;)I
.end method

.method public static native getDevicesForStream(I)I
.end method

.method public static native getForceUse(I)I
.end method

.method public static getInputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .prologue
    .line 651
    sparse-switch p0, :sswitch_data_0

    .line 700
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 653
    :sswitch_0
    const-string/jumbo v0, "communication"

    return-object v0

    .line 655
    :sswitch_1
    const-string/jumbo v0, "ambient"

    return-object v0

    .line 657
    :sswitch_2
    const-string/jumbo v0, "mic"

    return-object v0

    .line 659
    :sswitch_3
    const-string/jumbo v0, "bt_sco_hs"

    return-object v0

    .line 661
    :sswitch_4
    const-string/jumbo v0, "headset"

    return-object v0

    .line 663
    :sswitch_5
    const-string/jumbo v0, "aux_digital"

    return-object v0

    .line 665
    :sswitch_6
    const-string/jumbo v0, "telephony_rx"

    return-object v0

    .line 667
    :sswitch_7
    const-string/jumbo v0, "back_mic"

    return-object v0

    .line 669
    :sswitch_8
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 671
    :sswitch_9
    const-string/jumbo v0, "analog_dock"

    return-object v0

    .line 673
    :sswitch_a
    const-string/jumbo v0, "digital_dock"

    return-object v0

    .line 675
    :sswitch_b
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 677
    :sswitch_c
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 679
    :sswitch_d
    const-string/jumbo v0, "fm_tuner"

    return-object v0

    .line 681
    :sswitch_e
    const-string/jumbo v0, "tv_tuner"

    return-object v0

    .line 683
    :sswitch_f
    const-string/jumbo v0, "line"

    return-object v0

    .line 685
    :sswitch_10
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 687
    :sswitch_11
    const-string/jumbo v0, "bt_a2dp"

    return-object v0

    .line 689
    :sswitch_12
    const-string/jumbo v0, "loopback"

    return-object v0

    .line 691
    :sswitch_13
    const-string/jumbo v0, "ip"

    return-object v0

    .line 693
    :sswitch_14
    const-string/jumbo v0, "bus"

    return-object v0

    .line 695
    :sswitch_15
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 697
    :sswitch_16
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 651
    :sswitch_data_0
    .sparse-switch
        -0x7fffffff -> :sswitch_0
        -0x7ffffffe -> :sswitch_1
        -0x7ffffffc -> :sswitch_2
        -0x7ffffff8 -> :sswitch_3
        -0x7ffffff0 -> :sswitch_4
        -0x7fffffe0 -> :sswitch_5
        -0x7fffffc0 -> :sswitch_6
        -0x7fffff80 -> :sswitch_7
        -0x7fffff00 -> :sswitch_8
        -0x7ffffe00 -> :sswitch_9
        -0x7ffffc00 -> :sswitch_a
        -0x7ffff800 -> :sswitch_b
        -0x7ffff000 -> :sswitch_c
        -0x7fffe000 -> :sswitch_d
        -0x7fffc000 -> :sswitch_e
        -0x7fff8000 -> :sswitch_f
        -0x7fff0000 -> :sswitch_10
        -0x7ffe0000 -> :sswitch_11
        -0x7ffc0000 -> :sswitch_12
        -0x7ff80000 -> :sswitch_13
        -0x7ff00000 -> :sswitch_14
        -0x7f000000 -> :sswitch_15
        -0x7e000000 -> :sswitch_16
    .end sparse-switch
.end method

.method public static native getMasterMono()Z
.end method

.method public static native getMasterMute()Z
.end method

.method public static native getMasterVolume()F
.end method

.method public static final getNumStreamTypes()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xb

    return v0
.end method

.method public static getOutputDeviceName(I)Ljava/lang/String;
    .locals 1
    .param p0, "device"    # I

    .prologue
    .line 588
    sparse-switch p0, :sswitch_data_0

    .line 645
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 590
    :sswitch_0
    const-string/jumbo v0, "earpiece"

    return-object v0

    .line 592
    :sswitch_1
    const-string/jumbo v0, "speaker"

    return-object v0

    .line 594
    :sswitch_2
    const-string/jumbo v0, "headset"

    return-object v0

    .line 596
    :sswitch_3
    const-string/jumbo v0, "headphone"

    return-object v0

    .line 598
    :sswitch_4
    const-string/jumbo v0, "bt_sco"

    return-object v0

    .line 600
    :sswitch_5
    const-string/jumbo v0, "bt_sco_hs"

    return-object v0

    .line 602
    :sswitch_6
    const-string/jumbo v0, "bt_sco_carkit"

    return-object v0

    .line 604
    :sswitch_7
    const-string/jumbo v0, "bt_a2dp"

    return-object v0

    .line 606
    :sswitch_8
    const-string/jumbo v0, "bt_a2dp_hp"

    return-object v0

    .line 608
    :sswitch_9
    const-string/jumbo v0, "bt_a2dp_spk"

    return-object v0

    .line 610
    :sswitch_a
    const-string/jumbo v0, "hdmi"

    return-object v0

    .line 612
    :sswitch_b
    const-string/jumbo v0, "analog_dock"

    return-object v0

    .line 614
    :sswitch_c
    const-string/jumbo v0, "digital_dock"

    return-object v0

    .line 616
    :sswitch_d
    const-string/jumbo v0, "usb_accessory"

    return-object v0

    .line 618
    :sswitch_e
    const-string/jumbo v0, "usb_device"

    return-object v0

    .line 620
    :sswitch_f
    const-string/jumbo v0, "remote_submix"

    return-object v0

    .line 622
    :sswitch_10
    const-string/jumbo v0, "telephony_tx"

    return-object v0

    .line 624
    :sswitch_11
    const-string/jumbo v0, "line"

    return-object v0

    .line 626
    :sswitch_12
    const-string/jumbo v0, "hmdi_arc"

    return-object v0

    .line 628
    :sswitch_13
    const-string/jumbo v0, "spdif"

    return-object v0

    .line 630
    :sswitch_14
    const-string/jumbo v0, "fm_transmitter"

    return-object v0

    .line 632
    :sswitch_15
    const-string/jumbo v0, "aux_line"

    return-object v0

    .line 634
    :sswitch_16
    const-string/jumbo v0, "speaker_safe"

    return-object v0

    .line 636
    :sswitch_17
    const-string/jumbo v0, "ip"

    return-object v0

    .line 638
    :sswitch_18
    const-string/jumbo v0, "bus"

    return-object v0

    .line 640
    :sswitch_19
    const-string/jumbo v0, "proxy"

    return-object v0

    .line 642
    :sswitch_1a
    const-string/jumbo v0, "usb_headset"

    return-object v0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
        0x400000 -> :sswitch_16
        0x800000 -> :sswitch_17
        0x1000000 -> :sswitch_18
        0x2000000 -> :sswitch_19
        0x4000000 -> :sswitch_1a
    .end sparse-switch
.end method

.method public static native getOutputLatency(I)I
.end method

.method public static native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x1

    return v0

    .line 918
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    const/4 v0, 0x2

    return v0

    .line 921
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static native getPrimaryOutputFrameCount()I
.end method

.method public static native getPrimaryOutputSamplingRate()I
.end method

.method public static native getStreamMute(I)Z
.end method

.method public static native getStreamVolumeDB(III)F
.end method

.method public static native getStreamVolumeIndex(II)I
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 868
    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x3

    shl-int v0, v1, v0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 871
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 873
    return p0
.end method

.method public static native handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static native initStreamVolume(III)I
.end method

.method public static native isMicrophoneMuted()Z
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 930
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 931
    const v2, 0x112009c

    .line 930
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 932
    .local v0, "forceSingleVolume":Z
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .end local v0    # "forceSingleVolume":Z
    :goto_0
    return v0

    .restart local v0    # "forceSingleVolume":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static native isSourceActive(I)Z
.end method

.method public static native isStreamActive(II)Z
.end method

.method public static native isStreamActiveRemotely(II)Z
.end method

.method public static native listAudioPatches(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPatch;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static native listAudioPorts(Ljava/util/ArrayList;[I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioPort;",
            ">;[I)I"
        }
    .end annotation
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 117
    packed-switch p0, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown mode ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :pswitch_0
    const-string/jumbo v0, "MODE_CURRENT"

    return-object v0

    .line 119
    :pswitch_1
    const-string/jumbo v0, "MODE_IN_CALL"

    return-object v0

    .line 120
    :pswitch_2
    const-string/jumbo v0, "MODE_IN_COMMUNICATION"

    return-object v0

    .line 121
    :pswitch_3
    const-string/jumbo v0, "MODE_INVALID"

    return-object v0

    .line 122
    :pswitch_4
    const-string/jumbo v0, "MODE_NORMAL"

    return-object v0

    .line 123
    :pswitch_5
    const-string/jumbo v0, "MODE_RINGTONE"

    return-object v0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static native muteMicrophone(Z)I
.end method

.method private static final native native_register_dynamic_policy_callback()V
.end method

.method private static final native native_register_recording_callback()V
.end method

.method public static native newAudioPlayerId()I
.end method

.method public static native newAudioSessionId()I
.end method

.method private static recordingCallbackFromNative(IIII[I)V
    .locals 7
    .param p0, "event"    # I
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingFormat"    # [I

    .prologue
    .line 352
    const/4 v0, 0x0

    .line 353
    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 354
    :try_start_0
    sget-object v0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    monitor-exit v1

    .line 356
    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v6, ""

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Landroid/media/AudioSystem$AudioRecordingCallback;->onRecordingConfigurationChanged(IIII[ILjava/lang/String;)V

    .line 360
    :cond_0
    return-void

    .line 353
    .local v0, "cb":Landroid/media/AudioSystem$AudioRecordingCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public static native registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation
.end method

.method public static native releaseAudioPatch(Landroid/media/AudioPatch;)I
.end method

.method public static native setAudioPolicyParameters(Ljava/lang/String;)I
.end method

.method public static native setAudioPortConfig(Landroid/media/AudioPortConfig;)I
.end method

.method public static native setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I
.end method

.method public static setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$DynamicPolicyCallback;

    .prologue
    .line 280
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 281
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 282
    invoke-static {}, Landroid/media/AudioSystem;->native_register_dynamic_policy_callback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 284
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$ErrorCallback;

    .prologue
    .line 243
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 244
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->mErrorCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 245
    if-eqz p0, :cond_0

    .line 246
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/media/AudioSystem$ErrorCallback;->onError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 249
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setForceUse(II)I
.end method

.method public static native setLowRamDevice(Z)I
.end method

.method public static native setMasterMono(Z)I
.end method

.method public static native setMasterMute(Z)I
.end method

.method public static native setMasterVolume(F)I
.end method

.method public static native setParameters(Ljava/lang/String;)I
.end method

.method public static native setPhoneState(I)I
.end method

.method public static setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V
    .locals 2
    .param p0, "cb"    # Landroid/media/AudioSystem$AudioRecordingCallback;

    .prologue
    .line 335
    const-class v1, Landroid/media/AudioSystem;

    monitor-enter v1

    .line 336
    :try_start_0
    sput-object p0, Landroid/media/AudioSystem;->sRecordingCallback:Landroid/media/AudioSystem$AudioRecordingCallback;

    .line 337
    invoke-static {}, Landroid/media/AudioSystem;->native_register_recording_callback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 339
    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static native setStreamMute(IZ)I
.end method

.method public static native setStreamVolumeIndex(III)I
.end method

.method public static streamToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stream"    # I

    .prologue
    .line 895
    if-ltz p0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 896
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "USE_DEFAULT_STREAM_TYPE"

    return-object v0

    .line 897
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN_STREAM_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native systemReady()I
.end method
