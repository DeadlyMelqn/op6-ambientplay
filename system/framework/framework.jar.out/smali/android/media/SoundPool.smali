.class public Landroid/media/SoundPool;
.super Landroid/media/PlayerBase;
.source "SoundPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SoundPool$Builder;,
        Landroid/media/SoundPool$EventHandler;,
        Landroid/media/SoundPool$OnLoadCompleteListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SAMPLE_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SoundPool"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private mEventHandler:Landroid/media/SoundPool$EventHandler;

.field private mHasAppOpsPlayAudio:Z

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/media/SoundPool;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/media/SoundPool;

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/SoundPool;)Landroid/media/SoundPool$OnLoadCompleteListener;
    .locals 1
    .param p0, "-this"    # Landroid/media/SoundPool;

    .prologue
    iget-object v0, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "soundpool"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v0, "SoundPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/SoundPool;->DEBUG:Z

    .line 114
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "maxStreams"    # I
    .param p2, "streamType"    # I
    .param p3, "srcQuality"    # I

    .prologue
    .line 151
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 150
    invoke-direct {p0, p1, v0}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    .line 152
    const-string/jumbo v0, "SoundPool"

    const-string/jumbo v1, "SoundPool()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private constructor <init>(ILandroid/media/AudioAttributes;)V
    .locals 2
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 156
    const/4 v0, 0x3

    invoke-direct {p0, p2, v0}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    .line 159
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/media/SoundPool;->native_setup(Ljava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Native setup failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    .line 163
    iput-object p2, p0, Landroid/media/SoundPool;->mAttributes:Landroid/media/AudioAttributes;

    .line 165
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRegisterPlayer()V

    .line 166
    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioAttributes;Landroid/media/SoundPool;)V
    .locals 0
    .param p1, "maxStreams"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .param p3, "-this2"    # Landroid/media/SoundPool;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/SoundPool;-><init>(ILandroid/media/AudioAttributes;)V

    return-void
.end method

.method private final native _load(Ljava/io/FileDescriptor;JJI)I
.end method

.method private final native _mute(Z)V
.end method

.method private final native _play(IFFIIF)I
.end method

.method private final native _setVolume(IFF)V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;ILjava/lang/Object;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "ref"    # Ljava/lang/Object;
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 527
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SoundPool;

    .line 528
    .local v1, "soundPool":Landroid/media/SoundPool;
    if-nez v1, :cond_0

    .line 529
    return-void

    .line 531
    :cond_0
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    if-eqz v2, :cond_1

    .line 532
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/SoundPool$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 533
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public final native autoPause()V
.end method

.method public final native autoResume()V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public load(Landroid/content/Context;II)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "priority"    # I

    .prologue
    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    .line 225
    .local v7, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v9, 0x0

    .line 226
    .local v9, "id":I
    if-eqz v7, :cond_0

    .line 227
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p0

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v9

    .line 229
    :try_start_0
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    :goto_0
    return v9

    .line 230
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public load(Landroid/content/res/AssetFileDescriptor;I)I
    .locals 7
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "priority"    # I

    .prologue
    .line 246
    if-eqz p1, :cond_1

    .line 247
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 248
    .local v4, "len":J
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 249
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "no length for fd"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0

    .line 253
    .end local v4    # "len":J
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public load(Ljava/io/FileDescriptor;JJI)I
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "offset"    # J
    .param p4, "length"    # J
    .param p6, "priority"    # I

    .prologue
    .line 272
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 193
    const/4 v10, 0x0

    .line 195
    .local v10, "id":I
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v8, "f":Ljava/io/File;
    const/high16 v0, 0x10000000

    .line 196
    invoke-static {v8, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 198
    .local v9, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v9, :cond_0

    .line 199
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/SoundPool;->_load(Ljava/io/FileDescriptor;JJI)I

    move-result v10

    .line 200
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v8    # "f":Ljava/io/File;
    .end local v9    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return v10

    .line 202
    :catch_0
    move-exception v7

    .line 203
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "SoundPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final native pause(I)V
.end method

.method public final play(IFFIIF)I
    .locals 1
    .param p1, "soundID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F
    .param p4, "priority"    # I
    .param p5, "loop"    # I
    .param p6, "rate"    # F

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseStart()V

    .line 314
    invoke-direct/range {p0 .. p6}, Landroid/media/SoundPool;->_play(IFFIIF)I

    move-result v0

    return v0
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 1
    .param p1, "configuration"    # Landroid/media/VolumeShaper$Configuration;
    .param p2, "operation"    # Landroid/media/VolumeShaper$Operation;

    .prologue
    .line 397
    const/4 v0, -0x1

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    return-object v0
.end method

.method playerPause()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .locals 1
    .param p1, "muting"    # Z
    .param p2, "level"    # F

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method playerSetVolume(ZFF)V
    .locals 0
    .param p1, "muting"    # Z
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 408
    invoke-direct {p0, p1}, Landroid/media/SoundPool;->_mute(Z)V

    .line 409
    return-void
.end method

.method playerStart()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method

.method playerStop()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/media/SoundPool;->baseRelease()V

    .line 177
    invoke-direct {p0}, Landroid/media/SoundPool;->native_release()V

    .line 178
    return-void
.end method

.method public final native resume(I)V
.end method

.method public final native setLoop(II)V
.end method

.method public setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/SoundPool$OnLoadCompleteListener;

    .prologue
    .line 494
    iget-object v2, p0, Landroid/media/SoundPool;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 495
    if-eqz p1, :cond_2

    .line 498
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 499
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    .line 508
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_0
    iput-object p1, p0, Landroid/media/SoundPool;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 510
    return-void

    .line 500
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 501
    new-instance v1, Landroid/media/SoundPool$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/SoundPool$EventHandler;-><init>(Landroid/media/SoundPool;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 494
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 503
    .restart local v0    # "looper":Landroid/os/Looper;
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;

    goto :goto_0

    .line 506
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/SoundPool;->mEventHandler:Landroid/media/SoundPool$EventHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final native setPriority(II)V
.end method

.method public final native setRate(IF)V
.end method

.method public setVolume(IF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "volume"    # F

    .prologue
    .line 437
    invoke-virtual {p0, p1, p2, p2}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 438
    return-void
.end method

.method public final setVolume(IFF)V
    .locals 0
    .param p1, "streamID"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 390
    invoke-direct {p0, p1, p2, p3}, Landroid/media/SoundPool;->_setVolume(IFF)V

    .line 391
    return-void
.end method

.method public final native stop(I)V
.end method

.method public final native unload(I)Z
.end method
