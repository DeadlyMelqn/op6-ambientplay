.class public Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
.super Lcom/oem/os/IThreeKeyPolicy$Stub;
.source "ThreeKeyAudioPolicy2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ThreeKeyAudioPolicy2"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mFirstSetUp:Z

.field private mInitFlag:Z

.field private mMuteMediaFlag:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

.field private mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

.field private final mThreeKeySettingsLock:Ljava/lang/Object;

.field private mZenmode:I


# direct methods
.method static synthetic -get0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .prologue
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .prologue
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)Lcom/oem/os/ThreeKeyManager;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .prologue
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)I
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    .prologue
    iget v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    return v0
.end method

.method static synthetic -set0(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    return p1
.end method

.method static synthetic -set1(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;I)I
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/oem/os/IThreeKeyPolicy$Stub;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    .line 46
    iput-boolean v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mInitFlag:Z

    .line 47
    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mFirstSetUp:Z

    .line 52
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    .line 54
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    const-string/jumbo v0, "threekey"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oem/os/ThreeKeyManager;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeyManager:Lcom/oem/os/ThreeKeyManager;

    .line 56
    new-instance v0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;-><init>(Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    .line 57
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mSettingsObserver:Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2$SettingsObserver;->observe()V

    .line 58
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    const-string/jumbo v3, "oem_zen_media_switch"

    .line 58
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    .line 61
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreZenMode()V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 58
    goto :goto_0
.end method

.method private cleanAbnormalState()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 205
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 207
    return-void
.end method

.method private muteSpeakerMediaVolume(Z)V
    .locals 5
    .param p1, "init"    # Z

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "booting":I
    if-eqz p1, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 195
    const/16 v3, -0x64

    const/4 v4, 0x2

    .line 194
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 196
    return-void
.end method

.method private restoreSpeakerMediaVolume()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 200
    const/16 v3, 0x64

    const/4 v4, 0x2

    .line 199
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioManager;->threeKeySetStreamVolume(IIII)V

    .line 201
    return-void
.end method

.method private restoreZenMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dnd_mode_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    .local v0, "dnd":I
    if-ne v0, v4, :cond_1

    .line 129
    iput v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    .line 132
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    iget v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    const-string/jumbo v3, "ThreeKeyAudioPolicy2"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v1, "ThreeKeyAudioPolicy2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreZenMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    invoke-static {v3}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 130
    :cond_1
    if-nez v0, :cond_0

    .line 131
    iput v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    goto :goto_0
.end method


# virtual methods
.method public setDown()V
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreSpeakerMediaVolume()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mFirstSetUp:Z

    .line 108
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 110
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/media/AudioManager;->setOnePlusRingVolumeRange(II)V

    .line 113
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 114
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreZenMode()V

    .line 115
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x3

    .line 115
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    const-string/jumbo v0, "ThreeKeyAudioPolicy2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDown,mZenmode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 119
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setInitMode(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mInitFlag:Z

    .line 124
    return-void
.end method

.method public setMiddle()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreSpeakerMediaVolume()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mFirstSetUp:Z

    .line 92
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 94
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 95
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 96
    invoke-direct {p0}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->restoreZenMode()V

    .line 97
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    const-string/jumbo v2, "three_Key_mode"

    const/4 v3, 0x2

    .line 97
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    const-string/jumbo v0, "ThreeKeyAudioPolicy2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMiddle,mZenmode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 101
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUp()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 66
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mThreeKeySettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mMuteMediaFlag:Z

    if-eqz v1, :cond_0

    .line 69
    iget-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mFirstSetUp:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->muteSpeakerMediaVolume(Z)V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mFirstSetUp:Z

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    const-string/jumbo v3, "three_Key_mode"

    const/4 v4, 0x1

    .line 72
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 76
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 77
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setOnePlusFixedRingerMode(I)V

    .line 78
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "dnd_mode_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    .local v0, "dnd":I
    if-ne v0, v5, :cond_1

    .line 80
    const/4 v1, 0x3

    iput v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    .line 81
    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mNotificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    const-string/jumbo v4, "ThreeKeyAudioPolicy2"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 83
    :cond_1
    const-string/jumbo v1, "ThreeKeyAudioPolicy2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUp,mZenmode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;->mZenmode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 85
    return-void

    .line 66
    .end local v0    # "dnd":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
