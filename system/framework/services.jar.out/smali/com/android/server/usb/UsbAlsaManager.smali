.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$1;,
        Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

.field private final mAlsaDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlsaObserver:Landroid/os/FileObserver;

.field private final mAudioDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbAudioDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

.field private final mHasMidiFeature:Z

.field private mIsInputHeadset:Z

.field private mIsOutputHeadset:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/usb/UsbAlsaManager;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 60
    new-instance v0, Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaDevicesParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    .line 77
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    .line 80
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 116
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$1;

    const-string/jumbo v1, "/dev/snd/"

    .line 117
    const/16 v2, 0x300

    .line 116
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/usb/UsbAlsaManager$1;-><init>(Lcom/android/server/usb/UsbAlsaManager;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    .line 131
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 135
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    .line 136
    return-void
.end method

.method private alsaFileAdded(Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, "type":I
    const/4 v2, -0x1

    .local v2, "card":I
    const/4 v4, -0x1

    .line 259
    .local v4, "device":I
    const-string/jumbo v8, "pcmC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 260
    const-string/jumbo v8, "p"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 261
    const/4 v7, 0x1

    .line 269
    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    .line 271
    const/16 v8, 0x43

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 272
    .local v1, "c_index":I
    const/16 v8, 0x44

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 273
    .local v3, "d_index":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 274
    .local v6, "end":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 276
    :cond_1
    add-int/lit8 v6, v6, -0x1

    .line 278
    :cond_2
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 279
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 284
    iget-object v9, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v9

    .line 285
    :try_start_1
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 286
    new-instance v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    invoke-direct {v0, p0, v7, v2, v4}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 287
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Adding ALSA device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v8, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :cond_3
    monitor-exit v9

    .line 293
    .end local v1    # "c_index":I
    .end local v3    # "d_index":I
    .end local v6    # "end":I
    :cond_4
    return-void

    .line 262
    :cond_5
    const-string/jumbo v8, "c"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    const/4 v7, 0x2

    goto :goto_0

    .line 265
    :cond_6
    const-string/jumbo v8, "midiC"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 266
    const/4 v7, 0x3

    goto :goto_0

    .line 280
    :catch_0
    move-exception v5

    .line 281
    .local v5, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Could not parse ALSA file name "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    return-void

    .line 284
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "c_index":I
    .restart local v3    # "d_index":I
    .restart local v6    # "end":I
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method private alsaFileRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v2

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    .line 298
    .local v0, "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v0, :cond_0

    .line 299
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ALSA device removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 302
    return-void

    .line 296
    .end local v0    # "device":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V
    .locals 10
    .param p1, "audioDevice"    # Lcom/android/server/usb/UsbAudioDevice;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v0, :cond_0

    .line 162
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "no AudioService"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    const-string/jumbo v4, "usb_audio_automatic_routing_disabled"

    .line 171
    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 173
    .local v9, "isDisabled":I
    if-eqz v9, :cond_1

    .line 174
    return-void

    .line 177
    :cond_1
    if-eqz p2, :cond_3

    const/4 v2, 0x1

    .line 178
    .local v2, "state":I
    :goto_0
    iget v6, p1, Lcom/android/server/usb/UsbAudioDevice;->mCard:I

    .line 179
    .local v6, "alsaCard":I
    iget v7, p1, Lcom/android/server/usb/UsbAudioDevice;->mDevice:I

    .line 180
    .local v7, "alsaDevice":I
    if-ltz v6, :cond_2

    if-gez v7, :cond_4

    .line 181
    :cond_2
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid alsa card or device alsaCard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 182
    const-string/jumbo v5, " alsaDevice: "

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 177
    .end local v2    # "state":I
    .end local v6    # "alsaCard":I
    .end local v7    # "alsaDevice":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "state":I
    goto :goto_0

    .line 186
    .restart local v6    # "alsaCard":I
    .restart local v7    # "alsaDevice":I
    :cond_4
    invoke-static {v6, v7}, Lcom/android/server/audio/AudioService;->makeAlsaAddressString(II)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "address":Ljava/lang/String;
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-eqz v0, :cond_5

    .line 191
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mIsOutputHeadset:Z

    if-eqz v0, :cond_7

    .line 192
    const/high16 v1, 0x4000000

    .line 202
    .local v1, "device":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 203
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAudioDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 202
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v1    # "device":I
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    if-eqz v0, :cond_6

    .line 209
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mIsInputHeadset:Z

    if-eqz v0, :cond_9

    .line 210
    const/high16 v1, -0x7e000000

    .line 216
    .restart local v1    # "device":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAudioDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 216
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v1    # "device":I
    :cond_6
    :goto_3
    return-void

    .line 194
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-ne p1, v0, :cond_8

    .line 195
    const/16 v1, 0x2000

    .restart local v1    # "device":I
    goto :goto_1

    .line 196
    .end local v1    # "device":I
    :cond_8
    const/16 v1, 0x4000

    .restart local v1    # "device":I
    goto :goto_1

    .line 212
    .end local v1    # "device":I
    :cond_9
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v0, :cond_a

    .line 213
    const v1, -0x7ffff800

    .restart local v1    # "device":I
    goto :goto_2

    .line 214
    .end local v1    # "device":I
    :cond_a
    const v1, -0x7ffff000

    .restart local v1    # "device":I
    goto :goto_2

    .line 219
    .end local v1    # "device":I
    :catch_0
    move-exception v8

    .line 220
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "RemoteException in setWiredDeviceConnectionState"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .locals 18
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "type"    # I

    .prologue
    .line 229
    new-instance v6, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;-><init>(Lcom/android/server/usb/UsbAlsaManager;III)V

    .line 232
    .local v6, "testDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    const/16 v5, 0x9c4

    .line 234
    .local v5, "kWaitTimeMs":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    monitor-enter v12

    .line 235
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const-wide/16 v16, 0x9c4

    add-long v8, v14, v16

    .line 237
    .local v8, "timeoutMs":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    monitor-exit v12

    .line 238
    return-object v6

    .line 240
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    sub-long v10, v8, v14

    .line 241
    .local v10, "waitTimeMs":J
    const-wide/16 v14, 0x0

    cmp-long v7, v10, v14

    if-lez v7, :cond_2

    .line 243
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/HashMap;

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_0

    monitor-exit v12

    .line 251
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "waitForAlsaDevice failed for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v7, 0x0

    return-object v7

    .line 244
    :catch_0
    move-exception v4

    .line 245
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_4
    sget-object v7, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "usb: InterruptedException while waiting for ALSA file."

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 234
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v8    # "timeoutMs":J
    .end local v10    # "waitTimeMs":J
    :catchall_0
    move-exception v7

    monitor-exit v12

    throw v7
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 534
    const-string/jumbo v2, "USB Audio Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 536
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_0
    const-string/jumbo v2, "USB MIDI Devices:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 539
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 540
    .restart local v0    # "device":Landroid/hardware/usb/UsbDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 542
    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_1
    return-void
.end method

.method selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;
    .locals 11
    .param p1, "card"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 312
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 314
    return-object v10

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaDevicesParser;->scan()V

    .line 318
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v2

    .line 320
    .local v2, "device":I
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasPlaybackDevices(I)Z

    move-result v3

    .line 321
    .local v3, "hasPlayback":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasCaptureDevices(I)Z

    move-result v4

    .line 327
    .local v4, "hasCapture":Z
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v7

    .line 330
    :goto_0
    const/high16 v9, -0x80000000

    .line 327
    or-int v5, v1, v9

    .line 333
    .local v5, "deviceClass":I
    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2, v8}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-nez v1, :cond_2

    .line 334
    return-object v10

    .end local v5    # "deviceClass":I
    :cond_1
    move v1, v8

    .line 329
    goto :goto_0

    .line 338
    .restart local v5    # "deviceClass":I
    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, p1, v2, v7}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v1

    if-nez v1, :cond_3

    .line 339
    return-object v10

    .line 343
    :cond_3
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    .line 344
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1, p1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v6

    .line 345
    .local v6, "cardRecord":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    iget-object v1, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardName:Ljava/lang/String;

    iget-object v7, v6, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/android/server/usb/UsbAudioDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v0, v8}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 349
    return-object v0
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v0

    return-object v0
.end method

.method setAccessoryAudioState(ZII)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 482
    if-eqz p1, :cond_1

    .line 483
    new-instance v0, Lcom/android/server/usb/UsbAudioDevice;

    .line 484
    const/4 v5, 0x2

    move v1, p2

    move v2, p3

    .line 483
    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/UsbAudioDevice;-><init>(IIZZI)V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    .line 485
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 488
    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAccessoryAudioDevice:Lcom/android/server/usb/UsbAudioDevice;

    goto :goto_0
.end method

.method setPeripheralMidiState(ZII)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v3, 0x0

    .line 493
    iget-boolean v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v2, :cond_0

    .line 494
    return-void

    .line 497
    :cond_0
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v2, :cond_2

    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 500
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v2, "name"

    .line 501
    const v3, 0x1040642

    .line 500
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const-string/jumbo v2, "manufacturer"

    .line 503
    const v3, 0x1040641

    .line 502
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v2, "product"

    .line 505
    const v3, 0x1040643

    .line 504
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v2, "alsa_card"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 507
    const-string/jumbo v2, "alsa_device"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 513
    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v2, :cond_1

    .line 510
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 511
    iput-object v3, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 140
    const-string/jumbo v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 139
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 142
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaObserver:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 145
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/dev/snd/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 146
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 148
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbAlsaManager;->alsaFileAdded(Ljava/lang/String;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method usbDeviceAdded(Landroid/hardware/usb/UsbDevice;ZZ)V
    .locals 21
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "isInputHeadset"    # Z
    .param p3, "isOutputHeadset"    # Z

    .prologue
    .line 366
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbAlsaManager;->mIsInputHeadset:Z

    .line 367
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/usb/UsbAlsaManager;->mIsOutputHeadset:Z

    .line 370
    const/4 v9, 0x0

    .line 373
    .local v9, "isAudioDevice":Z
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v8

    .line 374
    .local v8, "interfaceCount":I
    const/4 v13, 0x0

    .local v13, "ntrfaceIndex":I
    :goto_0
    if-nez v9, :cond_1

    if-ge v13, v8, :cond_1

    .line 376
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v12

    .line 377
    .local v12, "ntrface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v12}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 378
    const/4 v9, 0x1

    .line 375
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 385
    .end local v12    # "ntrface":Landroid/hardware/usb/UsbInterface;
    :cond_1
    if-nez v9, :cond_2

    .line 386
    return-void

    .line 389
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    move-result v3

    .line 397
    .local v3, "addedCard":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaCardsParser;->isCardUsb(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 398
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->selectAudioCard(I)Lcom/android/server/usb/UsbAudioDevice;

    move-result-object v5

    .line 399
    .local v5, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    if-eqz v5, :cond_3

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v18, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "USB Audio Device Added: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaDevicesParser;->hasMIDIDevices(I)Z

    move-result v7

    .line 411
    .local v7, "hasMidi":Z
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mDevicesParser:Lcom/android/internal/alsa/AlsaDevicesParser;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/alsa/AlsaDevicesParser;->getDefaultDeviceNum(I)I

    move-result v6

    .line 413
    .local v6, "device":I
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v3, v6, v1}, Lcom/android/server/usb/UsbAlsaManager;->waitForAlsaDevice(III)Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;

    move-result-object v4

    .line 414
    .local v4, "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    if-eqz v4, :cond_5

    .line 415
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v15, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v10

    .line 417
    .local v10, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v14

    .line 418
    .local v14, "product":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v17

    .line 420
    .local v17, "version":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 421
    :cond_4
    move-object v11, v14

    .line 427
    .local v11, "name":Ljava/lang/String;
    :goto_1
    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string/jumbo v18, "manufacturer"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string/jumbo v18, "product"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string/jumbo v18, "version"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string/jumbo v18, "serial_number"

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v19

    .line 431
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string/jumbo v18, "alsa_card"

    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 434
    const-string/jumbo v18, "alsa_device"

    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    const-string/jumbo v18, "usb_device"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 438
    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mCard:I

    move/from16 v19, v0

    iget v0, v4, Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;->mDevice:I

    move/from16 v20, v0

    .line 437
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v15, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v16

    .line 439
    .local v16, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v16, :cond_5

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .end local v4    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .end local v5    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .end local v6    # "device":I
    .end local v7    # "hasMidi":Z
    .end local v10    # "manufacturer":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "product":Ljava/lang/String;
    .end local v15    # "properties":Landroid/os/Bundle;
    .end local v16    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local v17    # "version":Ljava/lang/String;
    :cond_5
    return-void

    .line 422
    .restart local v4    # "alsaDevice":Lcom/android/server/usb/UsbAlsaManager$AlsaDevice;
    .restart local v5    # "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    .restart local v6    # "device":I
    .restart local v7    # "hasMidi":Z
    .restart local v10    # "manufacturer":Ljava/lang/String;
    .restart local v14    # "product":Ljava/lang/String;
    .restart local v15    # "properties":Landroid/os/Bundle;
    .restart local v17    # "version":Ljava/lang/String;
    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 423
    :cond_7
    move-object v11, v10

    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_1

    .line 425
    .end local v11    # "name":Ljava/lang/String;
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "name":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .locals 6
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v5, 0x0

    .line 457
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAudioDevice;

    .line 458
    .local v0, "audioDevice":Lcom/android/server/usb/UsbAudioDevice;
    sget-object v2, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "USB Audio Device Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-eqz v0, :cond_1

    .line 460
    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasPlayback:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/usb/UsbAudioDevice;->mHasCapture:Z

    if-eqz v2, :cond_1

    .line 461
    :cond_0
    invoke-direct {p0, v0, v5}, Lcom/android/server/usb/UsbAlsaManager;->notifyDeviceState(Lcom/android/server/usb/UsbAudioDevice;Z)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAudioDevice;

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbMidiDevice;

    .line 468
    .local v1, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v1, :cond_2

    .line 469
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    :cond_2
    iput-boolean v5, p0, Lcom/android/server/usb/UsbAlsaManager;->mIsInputHeadset:Z

    .line 474
    iput-boolean v5, p0, Lcom/android/server/usb/UsbAlsaManager;->mIsOutputHeadset:Z

    .line 476
    return-void
.end method
