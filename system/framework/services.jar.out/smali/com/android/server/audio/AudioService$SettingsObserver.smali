.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mEncodedSurroundMode:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v2, 0x0

    .line 5796
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5797
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5798
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5799
    const-string/jumbo v1, "mode_ringer_streams_affected"

    .line 5798
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5800
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5801
    const-string/jumbo v1, "dock_audio_media_enabled"

    .line 5800
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5802
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5803
    const-string/jumbo v1, "master_mono"

    .line 5802
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5806
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "encoded_surround_output"

    .line 5805
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    .line 5808
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5809
    const-string/jumbo v1, "encoded_surround_output"

    .line 5808
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5812
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5813
    const-string/jumbo v1, "oem_auto_play"

    .line 5812
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5814
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateAutoPlayMusicStatus()V

    .line 5818
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5819
    const-string/jumbo v1, "oem_notification_ringtone"

    .line 5818
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5820
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->updateHeadsetNotificationStatus()V

    .line 5824
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 5825
    const-string/jumbo v1, "oem_call_information_broadcast"

    .line 5824
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 5828
    invoke-virtual {p1}, Lcom/android/server/audio/AudioService;->updateCallInfoBroadcastStatus()V

    .line 5830
    return-void
.end method

.method private updateAutoPlayMusicStatus()V
    .locals 5

    .prologue
    .line 5893
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5894
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_auto_play"

    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 5893
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-set4(Lcom/android/server/audio/AudioService;I)I

    .line 5895
    return-void
.end method

.method private updateEncodedSurroundOutput()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 5867
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "encoded_surround_output"

    .line 5866
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 5870
    .local v8, "newSurroundMode":I
    iget v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    if-eq v0, v8, :cond_1

    .line 5872
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v1, "SettingsObserver"

    invoke-static {v0, v8, v1}, Lcom/android/server/audio/AudioService;->-wrap38(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V

    .line 5873
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v9

    monitor-enter v9

    .line 5875
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v1, ""

    const/16 v2, 0x400

    invoke-static {v0, v2, v1}, Lcom/android/server/audio/AudioService;->-wrap9(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5876
    .local v7, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get18(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 5877
    .local v6, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v6, :cond_0

    .line 5879
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5880
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    .line 5881
    const-string/jumbo v5, "android"

    .line 5879
    const/16 v1, 0x400

    .line 5880
    const/4 v2, 0x0

    .line 5879
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5882
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 5883
    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    .line 5884
    const-string/jumbo v5, "android"

    .line 5882
    const/16 v1, 0x400

    .line 5883
    const/4 v2, 0x1

    .line 5882
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v9

    .line 5887
    iput v8, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->mEncodedSurroundMode:I

    .line 5889
    .end local v6    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v7    # "key":Ljava/lang/String;
    :cond_1
    return-void

    .line 5873
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 5834
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 5839
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get41(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5840
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5845
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/server/audio/AudioService;->-wrap44(Lcom/android/server/audio/AudioService;IZ)V

    .line 5847
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap35(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    .line 5848
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-wrap47(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    .line 5849
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateEncodedSurroundOutput()V

    .line 5852
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SettingsObserver;->updateAutoPlayMusicStatus()V

    .line 5856
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateHeadsetNotificationStatus()V

    .line 5860
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->updateCallInfoBroadcastStatus()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5863
    return-void

    .line 5839
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
