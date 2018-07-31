.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mCTSKindApps:[Ljava/lang/String;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private mGameList:[Ljava/lang/String;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mLakalKindApps:[Ljava/lang/String;

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I

.field private mVoipApps:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "-this"    # Landroid/media/AudioTrack;

    .prologue
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 1
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/AudioTrack;)V
    .locals 0
    .param p0, "-this"    # Landroid/media/AudioTrack;

    .prologue
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 80
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 487
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 486
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 488
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 545
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 548
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    .line 545
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 555
    const-string/jumbo v0, "AudioTrack"

    const-string/jumbo v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method constructor <init>(J)V
    .locals 9
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 711
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 192
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    .line 193
    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v4

    .line 194
    const-string/jumbo v2, "com.skype.rover"

    aput-object v2, v1, v5

    .line 195
    const-string/jumbo v2, "com.whatsapp"

    aput-object v2, v1, v7

    .line 196
    const-string/jumbo v2, "com.alibaba.mobileim"

    aput-object v2, v1, v8

    .line 197
    const-string/jumbo v2, "com.tencent.mobileqqi"

    aput-object v2, v1, v6

    .line 198
    const-string/jumbo v2, "com.tencent.qt.qtx"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 199
    const-string/jumbo v2, "com.xiaomi.channele"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 200
    const-string/jumbo v2, "com.google.android.talk"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 201
    const-string/jumbo v2, "cn.com.fetion"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 202
    const-string/jumbo v2, "cn.com.talker"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 203
    const-string/jumbo v2, "com.viber.voip"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 204
    const-string/jumbo v2, "jp.naver.line.android"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 205
    const-string/jumbo v2, "com.tencent.mobileqq"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 206
    const-string/jumbo v2, "yuku.luyinji.full"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 207
    const-string/jumbo v2, "im.yixin"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 208
    const-string/jumbo v2, "com.asiainno.pengpeng"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 209
    const-string/jumbo v2, "com.duowan.mobile"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 210
    const-string/jumbo v2, "com.immomo.momo"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 211
    const-string/jumbo v2, "com.yy.yymeet"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 212
    const-string/jumbo v2, "com.yx"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 213
    const-string/jumbo v2, "com.facebook.katana"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 192
    iput-object v1, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 215
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    .line 216
    const-string/jumbo v2, "com.lakala.android"

    aput-object v2, v1, v4

    .line 217
    const-string/jumbo v2, "com.unionpay.kalefu"

    aput-object v2, v1, v5

    .line 218
    const-string/jumbo v2, "com.huishuaka.credit"

    aput-object v2, v1, v7

    .line 219
    const-string/jumbo v2, "air.mobilepos"

    aput-object v2, v1, v8

    .line 220
    const-string/jumbo v2, "com.iboxpay.minicashbox"

    aput-object v2, v1, v6

    .line 221
    const-string/jumbo v2, "com.bill99.kuaishua"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 222
    const-string/jumbo v2, "com.iboxpay.minicashbox"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 223
    const-string/jumbo v2, "com.dcsdzficb"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 224
    const-string/jumbo v2, "com.dcyiqing"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 225
    const-string/jumbo v2, "com.dcyqzf"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 226
    const-string/jumbo v2, "com.dczhongcicb"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 227
    const-string/jumbo v2, "com.epay.impay.ui.dapaizhifu"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 228
    const-string/jumbo v2, "com.epay.impay.ui.jfpal"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 229
    const-string/jumbo v2, "remob.com"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 215
    iput-object v1, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 232
    new-array v1, v7, [Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "com.android.cts.verifier"

    aput-object v2, v1, v4

    .line 234
    const-string/jumbo v2, "android.media.cts"

    aput-object v2, v1, v5

    .line 232
    iput-object v1, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 236
    new-array v1, v5, [Ljava/lang/String;

    .line 237
    const-string/jumbo v2, "com.nextwave.wcc2"

    aput-object v2, v1, v4

    .line 236
    iput-object v1, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    .line 337
    iput v4, p0, Landroid/media/AudioTrack;->mState:I

    .line 342
    iput v5, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 346
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 352
    iput v4, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 353
    iput v4, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 370
    iput v5, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 374
    iput v6, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 383
    iput v8, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 388
    iput v5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 394
    iput v6, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 398
    iput v4, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 409
    iput v4, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 413
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 417
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 421
    iput v4, p0, Landroid/media/AudioTrack;->mOffset:I

    .line 2824
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2910
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 714
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 715
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 719
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 720
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 722
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 725
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 726
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 727
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    .line 731
    :goto_0
    return-void

    .line 729
    :cond_1
    iput v4, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 26
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 591
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 192
    const/16 v4, 0x15

    new-array v4, v4, [Ljava/lang/String;

    .line 193
    const-string/jumbo v9, "com.tencent.mm"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 194
    const-string/jumbo v9, "com.skype.rover"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 195
    const-string/jumbo v9, "com.whatsapp"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    .line 196
    const-string/jumbo v9, "com.alibaba.mobileim"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 197
    const-string/jumbo v9, "com.tencent.mobileqqi"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    .line 198
    const-string/jumbo v9, "com.tencent.qt.qtx"

    const/4 v10, 0x5

    aput-object v9, v4, v10

    .line 199
    const-string/jumbo v9, "com.xiaomi.channele"

    const/4 v10, 0x6

    aput-object v9, v4, v10

    .line 200
    const-string/jumbo v9, "com.google.android.talk"

    const/4 v10, 0x7

    aput-object v9, v4, v10

    .line 201
    const-string/jumbo v9, "cn.com.fetion"

    const/16 v10, 0x8

    aput-object v9, v4, v10

    .line 202
    const-string/jumbo v9, "cn.com.talker"

    const/16 v10, 0x9

    aput-object v9, v4, v10

    .line 203
    const-string/jumbo v9, "com.viber.voip"

    const/16 v10, 0xa

    aput-object v9, v4, v10

    .line 204
    const-string/jumbo v9, "jp.naver.line.android"

    const/16 v10, 0xb

    aput-object v9, v4, v10

    .line 205
    const-string/jumbo v9, "com.tencent.mobileqq"

    const/16 v10, 0xc

    aput-object v9, v4, v10

    .line 206
    const-string/jumbo v9, "yuku.luyinji.full"

    const/16 v10, 0xd

    aput-object v9, v4, v10

    .line 207
    const-string/jumbo v9, "im.yixin"

    const/16 v10, 0xe

    aput-object v9, v4, v10

    .line 208
    const-string/jumbo v9, "com.asiainno.pengpeng"

    const/16 v10, 0xf

    aput-object v9, v4, v10

    .line 209
    const-string/jumbo v9, "com.duowan.mobile"

    const/16 v10, 0x10

    aput-object v9, v4, v10

    .line 210
    const-string/jumbo v9, "com.immomo.momo"

    const/16 v10, 0x11

    aput-object v9, v4, v10

    .line 211
    const-string/jumbo v9, "com.yy.yymeet"

    const/16 v10, 0x12

    aput-object v9, v4, v10

    .line 212
    const-string/jumbo v9, "com.yx"

    const/16 v10, 0x13

    aput-object v9, v4, v10

    .line 213
    const-string/jumbo v9, "com.facebook.katana"

    const/16 v10, 0x14

    aput-object v9, v4, v10

    .line 192
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 215
    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/String;

    .line 216
    const-string/jumbo v9, "com.lakala.android"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 217
    const-string/jumbo v9, "com.unionpay.kalefu"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 218
    const-string/jumbo v9, "com.huishuaka.credit"

    const/4 v10, 0x2

    aput-object v9, v4, v10

    .line 219
    const-string/jumbo v9, "air.mobilepos"

    const/4 v10, 0x3

    aput-object v9, v4, v10

    .line 220
    const-string/jumbo v9, "com.iboxpay.minicashbox"

    const/4 v10, 0x4

    aput-object v9, v4, v10

    .line 221
    const-string/jumbo v9, "com.bill99.kuaishua"

    const/4 v10, 0x5

    aput-object v9, v4, v10

    .line 222
    const-string/jumbo v9, "com.iboxpay.minicashbox"

    const/4 v10, 0x6

    aput-object v9, v4, v10

    .line 223
    const-string/jumbo v9, "com.dcsdzficb"

    const/4 v10, 0x7

    aput-object v9, v4, v10

    .line 224
    const-string/jumbo v9, "com.dcyiqing"

    const/16 v10, 0x8

    aput-object v9, v4, v10

    .line 225
    const-string/jumbo v9, "com.dcyqzf"

    const/16 v10, 0x9

    aput-object v9, v4, v10

    .line 226
    const-string/jumbo v9, "com.dczhongcicb"

    const/16 v10, 0xa

    aput-object v9, v4, v10

    .line 227
    const-string/jumbo v9, "com.epay.impay.ui.dapaizhifu"

    const/16 v10, 0xb

    aput-object v9, v4, v10

    .line 228
    const-string/jumbo v9, "com.epay.impay.ui.jfpal"

    const/16 v10, 0xc

    aput-object v9, v4, v10

    .line 229
    const-string/jumbo v9, "remob.com"

    const/16 v10, 0xd

    aput-object v9, v4, v10

    .line 215
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 232
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 233
    const-string/jumbo v9, "com.android.cts.verifier"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 234
    const-string/jumbo v9, "android.media.cts"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    .line 232
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 236
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 237
    const-string/jumbo v9, "com.nextwave.wcc2"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    .line 236
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    .line 337
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    .line 342
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 346
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 352
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 353
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 370
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 374
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 383
    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 388
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 394
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 398
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 409
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 413
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 417
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 421
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mOffset:I

    .line 2824
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2910
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 594
    if-nez p2, :cond_0

    .line 595
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Illegal null AudioFormat"

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v4, v0, v1, v2}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v4, v9}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v9

    or-int/lit16 v9, v9, 0x200

    and-int/lit16 v9, v9, -0x101

    .line 600
    invoke-virtual {v4, v9}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 609
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v24

    .local v24, "looper":Landroid/os/Looper;
    if-nez v24, :cond_2

    .line 610
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v24

    .line 613
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v5

    .line 614
    .local v5, "rate":I
    if-nez v5, :cond_3

    .line 615
    const/4 v5, 0x0

    .line 618
    :cond_3
    const/4 v7, 0x0

    .line 619
    .local v7, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 621
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v7

    .line 623
    :cond_4
    const/4 v6, 0x0

    .line 624
    .local v6, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_7

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v6

    .line 631
    :cond_5
    :goto_0
    const/4 v8, 0x1

    .line 632
    .local v8, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    :cond_6
    move-object/from16 v4, p0

    move/from16 v9, p4

    .line 635
    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 636
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 638
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 640
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 642
    if-gez p5, :cond_8

    .line 643
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid audio session ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 627
    .end local v8    # "encoding":I
    :cond_7
    if-nez v7, :cond_5

    .line 628
    const/16 v6, 0xc

    goto :goto_0

    .line 646
    .restart local v8    # "encoding":I
    :cond_8
    const/4 v4, 0x1

    new-array v13, v4, [I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/4 v9, 0x0

    aput v4, v13, v9

    .line 647
    .local v13, "sampleRate":[I
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v19, v0

    .line 648
    .local v19, "session":[I
    const/4 v4, 0x0

    aput p5, v19, v4

    .line 651
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v25

    .line 653
    .local v25, "packageName":Ljava/lang/String;
    if-eqz v25, :cond_9

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v9, "com.google.android.media.gts"

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 654
    const-string/jumbo v4, "mediagts=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 658
    :cond_9
    new-instance v11, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 659
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move/from16 v16, v0

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v10, p0

    .line 658
    invoke-direct/range {v10 .. v21}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v23

    .line 661
    .local v23, "initResult":I
    if-eqz v23, :cond_a

    .line 662
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error code "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, " when initializing AudioTrack."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 663
    return-void

    .line 666
    :cond_a
    const/4 v4, 0x0

    aget v4, v13, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 667
    const/4 v4, 0x0

    aget v4, v19, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_b

    .line 671
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 672
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mChannelCount:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v9}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v9

    mul-int v22, v4, v9

    .line 676
    .local v22, "frameSizeInBytes":I
    :goto_1
    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v9, 0x41a00000    # 20.0f

    div-float v4, v9, v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    mul-int v4, v4, v22

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mOffset:I

    .line 681
    .end local v22    # "frameSizeInBytes":I
    :cond_b
    const-string/jumbo v4, "android.media.AudioTrack"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "bufferSizeInBytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mSampleRate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-eqz v25, :cond_d

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v9, "com.tencent.mm"

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 683
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v9, 0x3e80

    if-ne v4, v9, :cond_d

    .line 684
    const/16 v4, 0x5080

    move/from16 v0, p3

    if-ne v0, v4, :cond_d

    .line 685
    const-string/jumbo v4, "wechat16k=1"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 690
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v4, :cond_e

    .line 691
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    .line 696
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    .line 697
    return-void

    .line 674
    :cond_c
    const/16 v22, 0x1

    .restart local v22    # "frameSizeInBytes":I
    goto :goto_1

    .line 687
    .end local v22    # "frameSizeInBytes":I
    :cond_d
    const-string/jumbo v4, "wechat16k=0"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_2

    .line 693
    :cond_e
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_3
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .prologue
    .line 1212
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 1217
    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 1218
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1215
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    .line 1221
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1222
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 1223
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1075
    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_0

    .line 1076
    const v2, 0x2ee00

    if-le p1, v2, :cond_1

    .line 1077
    :cond_0
    if-eqz p1, :cond_1

    .line 1078
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1079
    const-string/jumbo v4, "Hz is not a supported sample rate."

    .line 1078
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1081
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1086
    const/16 v2, 0xd

    if-ne p4, v2, :cond_2

    .line 1087
    if-eq p2, v5, :cond_2

    .line 1088
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 1089
    const-string/jumbo v3, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    .line 1088
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1094
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 1096
    sparse-switch p2, :sswitch_data_0

    .line 1109
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 1110
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1121
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 1122
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_6

    .line 1124
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v2, v4, v2

    add-int/lit8 v1, v2, -0x1

    .line 1125
    .local v1, "indexMask":I
    not-int v2, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_5

    .line 1126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1100
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1101
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 1105
    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1106
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 1113
    :cond_3
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1117
    :cond_4
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 1118
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 1129
    .restart local v1    # "indexMask":I
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 1130
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8

    .line 1131
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 1139
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_6
    if-ne p4, v4, :cond_7

    .line 1140
    const/4 p4, 0x2

    .line 1143
    :cond_7
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1144
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1132
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_6

    .line 1133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1146
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_9
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1150
    if-eq p5, v4, :cond_b

    if-eqz p5, :cond_b

    .line 1152
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1151
    :cond_b
    if-eq p5, v4, :cond_c

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1150
    if-nez v2, :cond_a

    .line 1154
    :cond_c
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 1155
    return-void

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    .prologue
    .line 3010
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 3011
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 3012
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 3013
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 3014
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 3015
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3011
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 3019
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 1765
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1766
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1768
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 1769
    const/4 p0, 0x0

    .line 1773
    :cond_1
    :goto_0
    return p0

    .line 1770
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1771
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 1270
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v4, -0x2

    .line 1586
    const/4 v0, 0x0

    .line 1587
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 1597
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1598
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1599
    return v4

    .line 1590
    :sswitch_0
    const/4 v0, 0x1

    .line 1605
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1606
    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1607
    return v4

    .line 1594
    :sswitch_1
    const/4 v0, 0x2

    .line 1595
    goto :goto_0

    .line 1601
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_0

    .line 1612
    :cond_1
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_2

    .line 1613
    const v2, 0x2ee00

    if-le p0, v2, :cond_3

    .line 1614
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1615
    return v4

    .line 1618
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1619
    .local v1, "size":I
    if-gtz v1, :cond_4

    .line 1620
    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1621
    const/4 v2, -0x1

    return v2

    .line 1624
    :cond_4
    return v1

    .line 1587
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1559
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    .prologue
    const/4 v6, 0x0

    .line 1164
    and-int/lit16 v4, p0, 0x1cfc

    if-eq v4, p0, :cond_0

    .line 1165
    const-string/jumbo v4, "Channel configuration features unsupported channels"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1166
    return v6

    .line 1168
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 1169
    .local v1, "channelCount":I
    sget v4, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v1, v4, :cond_1

    .line 1170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Channel configuration contains too many channels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1171
    const-string/jumbo v5, ">"

    .line 1170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1171
    sget v5, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 1170
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1172
    return v6

    .line 1178
    :cond_1
    const/16 v2, 0xc

    .line 1179
    .local v2, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    .line 1180
    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1181
    return v6

    .line 1184
    :cond_2
    const/16 v0, 0xc0

    .line 1185
    .local v0, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_3

    .line 1186
    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_3

    .line 1187
    const-string/jumbo v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1188
    return v6

    .line 1192
    :cond_3
    const/16 v3, 0x1800

    .line 1193
    .local v3, "sidePair":I
    and-int/lit16 v4, p0, 0x1800

    if-eqz v4, :cond_4

    .line 1194
    and-int/lit16 v4, p0, 0x1800

    const/16 v5, 0x1800

    if-eq v4, v5, :cond_4

    .line 1195
    const-string/jumbo v4, "Side channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1196
    return v6

    .line 1198
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3297
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 3301
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3175
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 3176
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_0

    .line 3177
    return-void

    .line 3180
    :cond_0
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_1

    .line 3181
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 3182
    return-void

    .line 3184
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 3185
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_2

    .line 3186
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 3187
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 3188
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3189
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3192
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .locals 12
    .param p0, "attributes"    # Landroid/media/AudioAttributes;
    .param p1, "format"    # Landroid/media/AudioFormat;
    .param p2, "bufferSizeInBytes"    # I
    .param p3, "mode"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1021
    if-eqz p0, :cond_2

    .line 1022
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    if-nez v3, :cond_0

    .line 1023
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-eq v3, v11, :cond_1

    .line 1027
    :cond_0
    return v10

    .line 1024
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    .line 1026
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    .line 1031
    :cond_2
    if-eqz p1, :cond_3

    .line 1032
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-nez v3, :cond_4

    .line 1036
    :cond_3
    return v10

    .line 1033
    :cond_4
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1031
    if-nez v3, :cond_3

    .line 1034
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1031
    if-nez v3, :cond_3

    .line 1035
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-lt v3, v11, :cond_3

    .line 1040
    if-eq p3, v11, :cond_5

    .line 1041
    return v10

    .line 1046
    :cond_5
    if-eqz p2, :cond_6

    .line 1047
    const-wide/16 v0, 0x64

    .line 1048
    .local v0, "BUFFER_TARGET_MODE_STREAM_MS":J
    const/16 v2, 0x3e8

    .line 1051
    .local v2, "MILLIS_PER_SECOND":I
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    int-to-long v6, v3

    .line 1050
    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    .line 1052
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3

    int-to-long v8, v3

    .line 1050
    mul-long/2addr v6, v8

    .line 1053
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    int-to-long v8, v3

    .line 1050
    mul-long/2addr v6, v8

    .line 1054
    const-wide/16 v8, 0x3e8

    .line 1050
    div-long v4, v6, v8

    .line 1055
    .local v4, "bufferTargetSize":J
    int-to-long v6, p2

    cmp-long v3, v6, v4

    if-gez v3, :cond_6

    .line 1056
    return v10

    .line 1060
    .end local v0    # "BUFFER_TARGET_MODE_STREAM_MS":J
    .end local v2    # "MILLIS_PER_SECOND":I
    .end local v4    # "bufferTargetSize":J
    :cond_6
    return v11
.end method

.method private startImpl()V
    .locals 7

    .prologue
    .line 2074
    iget-object v4, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2075
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 2077
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2078
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "play() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    const/4 v1, 0x0

    .line 2080
    .local v1, "isVoipApp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 2081
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2082
    const/4 v1, 0x1

    .line 2086
    :cond_0
    if-eqz v1, :cond_6

    .line 2087
    const-string/jumbo v3, "isVoipApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2092
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 2093
    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2094
    const-string/jumbo v3, "isLakalKindApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2102
    :cond_1
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 2103
    if-eqz v2, :cond_8

    iget-object v3, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2104
    iget v3, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v5, 0xac44

    if-eq v3, v5, :cond_2

    iget v3, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v5, 0xbb80

    if-ne v3, v5, :cond_8

    .line 2105
    :cond_2
    const-string/jumbo v3, "mediacts=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2112
    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 2113
    if-eqz v2, :cond_9

    iget-object v3, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2114
    const-string/jumbo v3, "specialGameplaying=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2115
    const-string/jumbo v3, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setParameters specialGameplaying=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_4
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 2121
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 2123
    return-void

    .line 2080
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2089
    :cond_6
    :try_start_1
    const-string/jumbo v3, "isVoipApp=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 2074
    .end local v0    # "i":I
    .end local v1    # "isVoipApp":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2092
    .restart local v0    # "i":I
    .restart local v1    # "isVoipApp":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 2102
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2112
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2895
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2896
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2898
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2886
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2887
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2889
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2924
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2925
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2926
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 2927
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2928
    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2929
    if-eqz p2, :cond_1

    .line 2928
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2927
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2932
    return-void

    .line 2929
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2924
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2991
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2992
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 2783
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2784
    const/4 v0, -0x3

    return v0

    .line 2786
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;

    .prologue
    .line 1844
    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    .line 737
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 740
    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 741
    .local v9, "session":[I
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 742
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 743
    const/4 v2, 0x0

    .line 745
    const/4 v4, 0x0

    .line 746
    const/4 v5, 0x0

    .line 747
    const/4 v6, 0x0

    .line 748
    const/4 v7, 0x0

    .line 749
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v10, p1

    .line 742
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v12

    .line 752
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 754
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 759
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 761
    .end local v3    # "rates":[I
    .end local v9    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1244
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1245
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 1246
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 2230
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2232
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 2233
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2234
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2237
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1634
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    .prologue
    .line 1459
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 1403
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 1333
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 1358
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 1342
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1343
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1342
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1344
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1342
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1345
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1346
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1348
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1349
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1351
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1514
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1470
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 1479
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPerformanceMode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1545
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    .line 1546
    .local v0, "flags":I
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 1547
    const/4 v1, 0x1

    return v1

    .line 1548
    :cond_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 1549
    const/4 v1, 0x2

    return v1

    .line 1551
    :cond_1
    return v2
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1380
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 1502
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    .line 1300
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 1290
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 1487
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 2856
    monitor-enter p0

    .line 2857
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2856
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2868
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2869
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 2870
    return-object v4

    .line 2873
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 2874
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2875
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 2876
    aget-object v3, v1, v2

    return-object v3

    .line 2874
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2879
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 1283
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1370
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 1320
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1679
    if-nez p1, :cond_0

    .line 1680
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1683
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1684
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1685
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 1686
    return v3

    .line 1688
    :cond_1
    aget-wide v2, v0, v3

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1689
    aget-wide v2, v0, v4

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1690
    return v4
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    .line 1721
    if-nez p1, :cond_0

    .line 1722
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1725
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1726
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1727
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1728
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1729
    return v1
.end method

.method public getUnderrunCount()I
    .locals 1

    .prologue
    .line 1531
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2201
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2202
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2206
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2207
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 2208
    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    .line 2209
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2211
    return-void

    .line 2206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2045
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2046
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "play() called on uninitialized AudioTrack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2049
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    .line 2050
    .local v0, "delay":I
    if-nez v0, :cond_1

    .line 2051
    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    .line 2071
    :goto_0
    return-void

    .line 2053
    :cond_1
    new-instance v1, Landroid/media/AudioTrack$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    invoke-virtual {v1}, Landroid/media/AudioTrack$1;->start()V

    goto :goto_0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    .line 1833
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1838
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    .prologue
    .line 3160
    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    .line 3161
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 2
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .prologue
    const/4 v1, 0x0

    .line 2816
    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .end local p2    # "level":F
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 2817
    .restart local p2    # "level":F
    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2818
    .local v0, "err":I
    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method playerSetVolume(ZFF)V
    .locals 1
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    const/4 v0, 0x0

    .line 1804
    if-eqz p1, :cond_0

    move p2, v0

    .end local p2    # "leftVolume":F
    :cond_0
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1805
    .restart local p2    # "leftVolume":F
    if-eqz p1, :cond_1

    :goto_0
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    .line 1807
    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 1808
    return-void

    :cond_1
    move v0, p3

    .line 1805
    goto :goto_0
.end method

.method playerStart()V
    .locals 0

    .prologue
    .line 3155
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 3156
    return-void
.end method

.method playerStop()V
    .locals 0

    .prologue
    .line 3165
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    .line 3166
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 1233
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1238
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 1239
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1240
    return-void

    .line 1234
    :catch_0
    move-exception v0

    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2755
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 2756
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2758
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .prologue
    .line 2942
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2943
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2944
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2948
    return-void

    .line 2942
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3003
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 3004
    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 2808
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2809
    const/4 v0, -0x3

    return v0

    .line 2811
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    .prologue
    .line 1430
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1431
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1433
    :cond_1
    if-gez p1, :cond_2

    .line 1434
    const/4 v0, -0x2

    return v0

    .line 1436
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    .line 1990
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1992
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1991
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1994
    if-nez p3, :cond_3

    .line 2000
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 1996
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-lt p1, v0, :cond_5

    .line 1998
    :cond_4
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1997
    :cond_5
    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1908
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1909
    const/4 v0, -0x3

    return v0

    .line 1911
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    .line 1948
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1950
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1949
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1952
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 1953
    :cond_2
    const/4 v0, -0x2

    return v0

    .line 1955
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1891
    if-nez p1, :cond_0

    .line 1892
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1894
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1895
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 1743
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1744
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1756
    if-eqz p1, :cond_0

    .line 1757
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1761
    :goto_0
    return-void

    .line 1759
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 1866
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1867
    const/4 v0, -0x3

    return v0

    .line 1869
    :cond_0
    if-gtz p1, :cond_1

    .line 1870
    const/4 v0, -0x2

    return v0

    .line 1872
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1922
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1923
    const/4 v0, -0x3

    return v0

    .line 1925
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    .line 2837
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 2838
    const/4 v2, 0x0

    return v2

    .line 2840
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2841
    .local v0, "preferredDeviceId":I
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2842
    .local v1, "status":Z
    if-eqz v1, :cond_1

    .line 2843
    monitor-enter p0

    .line 2844
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2847
    :cond_1
    return v1

    .line 2840
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "preferredDeviceId":I
    goto :goto_0

    .line 2843
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2012
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 2013
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1794
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1795
    const/4 v0, -0x3

    return v0

    .line 1798
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 1799
    return v1
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .prologue
    .line 1826
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2135
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v2, v3, :cond_0

    .line 2136
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stop() called on uninitialized AudioTrack."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2140
    :cond_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2142
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2143
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2144
    if-eqz v1, :cond_6

    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2145
    const-string/jumbo v2, "isLakalKindApp=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2153
    :cond_1
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop() packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mSampleRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2155
    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2156
    const-string/jumbo v2, "mediacts=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2161
    :cond_2
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "com.tencent.mm"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2162
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v4, 0x3e80

    if-ne v2, v4, :cond_3

    .line 2163
    const-string/jumbo v2, "wechat16k=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2169
    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2170
    if-eqz v1, :cond_8

    iget-object v2, p0, Landroid/media/AudioTrack;->mGameList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2171
    const-string/jumbo v2, "specialGameplaying=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2172
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setParameters specialGameplaying=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    :cond_4
    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "com.google.android.media.gts"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2181
    const-string/jumbo v2, "mediagts=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2184
    :cond_5
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 2185
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    .line 2186
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 2187
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2188
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 2190
    return-void

    .line 2143
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2154
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2169
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2140
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2594
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2595
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const/4 v0, -0x3

    return v0

    .line 2599
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v7, :cond_1

    .line 2600
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    return v3

    .line 2604
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 2605
    :cond_2
    const-string/jumbo v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    return v3

    .line 2604
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 2609
    const/4 v6, 0x0

    .line 2610
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2612
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2613
    if-nez p3, :cond_4

    move v5, v7

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 2611
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    .line 2621
    :goto_0
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_5

    .line 2622
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2623
    if-lez v6, :cond_5

    .line 2625
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2628
    :cond_5
    if-lez v6, :cond_6

    .line 2629
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2632
    :cond_6
    return v6

    .line 2615
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 2616
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 2617
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2618
    if-nez p3, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    move v3, p2

    .line 2615
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v4, -0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2667
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_0

    .line 2668
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    return v4

    .line 2672
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    .line 2673
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    return v7

    .line 2677
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v2, v3, :cond_2

    .line 2678
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    return v4

    .line 2682
    :cond_2
    iget-object v2, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    .line 2683
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    .line 2687
    :cond_3
    if-eqz p1, :cond_4

    if-gez p2, :cond_5

    .line 2688
    :cond_4
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    return v7

    .line 2687
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt p2, v2, :cond_4

    .line 2693
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    .line 2694
    iget v2, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2695
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2696
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v3, 0x55550002

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2699
    :cond_6
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_7

    .line 2700
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2701
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 2702
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/media/AudioTrack;->mOffset:I

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 2703
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2704
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2708
    :cond_7
    const/4 v0, 0x0

    .line 2709
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_9

    .line 2710
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2711
    if-gez v0, :cond_8

    .line 2712
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iput-object v6, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2714
    iput v5, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2715
    return v0

    .line 2717
    :cond_8
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_9

    .line 2718
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    return v5

    .line 2724
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2725
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2726
    if-gez v0, :cond_a

    .line 2727
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iput-object v6, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2729
    iput v5, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2730
    return v0

    .line 2733
    :cond_a
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2735
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 2275
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2323
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2324
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2327
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2328
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    return v2

    .line 2332
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2335
    :cond_3
    return v2

    .line 2332
    :cond_4
    if-ltz p3, :cond_3

    .line 2333
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2334
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2338
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2339
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2338
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .line 2341
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2342
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2343
    if-lez v6, :cond_6

    .line 2345
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2348
    :cond_6
    return v6
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2513
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2514
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    return v2

    .line 2518
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2519
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    return v2

    .line 2523
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2524
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    return v3

    .line 2528
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2531
    :cond_3
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return v3

    .line 2528
    :cond_4
    if-ltz p3, :cond_3

    .line 2529
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2530
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2535
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2536
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2535
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .line 2538
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2539
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2540
    if-lez v6, :cond_6

    .line 2542
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2545
    :cond_6
    return v6
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2432
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2433
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2436
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2437
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    return v2

    .line 2441
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2444
    :cond_3
    return v2

    .line 2441
    :cond_4
    if-ltz p3, :cond_3

    .line 2442
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2443
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2447
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2448
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2447
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    .line 2450
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2451
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2452
    if-lez v6, :cond_6

    .line 2454
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2457
    :cond_6
    return v6
.end method
