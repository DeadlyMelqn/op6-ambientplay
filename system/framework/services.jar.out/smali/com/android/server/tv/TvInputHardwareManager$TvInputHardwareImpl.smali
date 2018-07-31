.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
    }
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "-value"    # Landroid/media/AudioPatch;

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "-value"    # Landroid/media/AudioDevicePort;

    .prologue
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputHardwareManager;
    .param p2, "info"    # Landroid/media/tv/TvInputHardwareInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 782
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    .line 737
    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    .line 738
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 741
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    .line 740
    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    .line 766
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 767
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 769
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 770
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 773
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 774
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 776
    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 778
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 779
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 780
    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 783
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    .line 784
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 785
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 787
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 789
    :cond_0
    return-void
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .locals 5
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 807
    if-nez p1, :cond_0

    .line 808
    return-object v4

    .line 810
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    return-object v4

    .line 814
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "port$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 815
    .local v1, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-ne v3, p1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 816
    return-object v1

    .line 819
    .end local v1    # "port":Landroid/media/AudioDevicePort;
    :cond_3
    return-object v4
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p1, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "devicePorts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioDevicePort;>;"
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 795
    return-void

    .line 797
    :cond_0
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    .line 798
    .local v3, "sinkDevice":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "port$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    .line 799
    .local v1, "port":Landroid/media/AudioDevicePort;
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 800
    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    .line 801
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    .end local v1    # "port":Landroid/media/AudioDevicePort;
    :cond_2
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1108
    return-void

    .line 1105
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v1, 0x0

    .line 1040
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1041
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    .line 1042
    return v1

    .line 1044
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    monitor-exit v2

    .line 1045
    return v1

    .line 1047
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    monitor-exit v2

    .line 1048
    return v1

    .line 1051
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 1052
    .local v0, "result":I
    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    monitor-exit v2

    return v1

    .line 1040
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .locals 5
    .param p1, "config"    # Landroid/media/tv/TvStreamConfig;

    .prologue
    const/4 v1, 0x0

    .line 1057
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1058
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    .line 1059
    return v1

    .line 1061
    :cond_0
    if-nez p1, :cond_1

    monitor-exit v2

    .line 1062
    return v1

    .line 1065
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1066
    .local v0, "result":I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit v2

    return v1

    .line 1057
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateAudioConfigLocked()V
    .locals 34

    .prologue
    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v19

    .line 884
    .local v19, "sinkUpdated":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v26

    .line 888
    .local v26, "sourceUpdated":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    if-eqz v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    move-object/from16 v29, v0

    if-nez v29, :cond_2

    .line 889
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 891
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 893
    :cond_1
    return-void

    .line 896
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap4(Lcom/android/server/tv/TvInputHardwareManager;)V

    .line 897
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap2(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v30

    mul-float v28, v29, v30

    .line 898
    .local v28, "volume":F
    const/16 v24, 0x0

    .line 899
    .local v24, "sourceGainConfig":Landroid/media/AudioGainConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    move/from16 v29, v0

    cmpl-float v29, v28, v29

    if-eqz v29, :cond_4

    .line 900
    const/16 v23, 0x0

    .line 901
    .local v23, "sourceGain":Landroid/media/AudioGain;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_0
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    aget-object v9, v30, v29

    .line 902
    .local v9, "gain":Landroid/media/AudioGain;
    invoke-virtual {v9}, Landroid/media/AudioGain;->mode()I

    move-result v32

    and-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_d

    .line 903
    move-object/from16 v23, v9

    .line 908
    .end local v9    # "gain":Landroid/media/AudioGain;
    .end local v23    # "sourceGain":Landroid/media/AudioGain;
    :cond_3
    if-eqz v23, :cond_f

    .line 909
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    move-result v29

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    move-result v30

    sub-int v29, v29, v30

    .line 910
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    move-result v30

    .line 909
    div-int v27, v29, v30

    .line 911
    .local v27, "steps":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    .line 912
    .local v10, "gainValue":I
    const/high16 v29, 0x3f800000    # 1.0f

    cmpg-float v29, v28, v29

    if-gez v29, :cond_e

    .line 913
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    move-result v29

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v28

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    mul-int v29, v29, v30

    add-int v10, v10, v29

    .line 918
    :goto_1
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v11, v0, [I

    const/16 v29, 0x0

    aput v10, v11, v29

    .line 920
    .local v11, "gainValues":[I
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->channelMask()I

    move-result v29

    .line 919
    const/16 v30, 0x1

    .line 920
    const/16 v31, 0x0

    .line 919
    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v24

    .line 926
    .end local v10    # "gainValue":I
    .end local v11    # "gainValues":[I
    .end local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .end local v27    # "steps":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v21

    .line 927
    .local v21, "sourceConfig":Landroid/media/AudioPortConfig;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v16, "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v6, v0, [Landroid/media/AudioPatch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v29, v6, v30

    .line 929
    .local v6, "audioPatchArray":[Landroid/media/AudioPatch;
    if-nez v26, :cond_10

    move/from16 v13, v19

    .line 931
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "audioSink$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDevicePort;

    .line 932
    .local v7, "audioSink":Landroid/media/AudioDevicePort;
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v15

    .line 933
    .local v15, "sinkConfig":Landroid/media/AudioPortConfig;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    move/from16 v18, v0

    .line 934
    .local v18, "sinkSamplingRate":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 935
    .local v14, "sinkChannelMask":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    move/from16 v17, v0

    .line 938
    .local v17, "sinkFormat":I
    if-eqz v15, :cond_7

    .line 939
    if-nez v18, :cond_5

    .line 940
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v18

    .line 942
    :cond_5
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_6

    .line 943
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v14

    .line 945
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 946
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v14

    .line 950
    :cond_7
    if-eqz v15, :cond_8

    .line 951
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 955
    :cond_8
    :goto_5
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_9

    .line 956
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_9

    .line 957
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v18, v29, v30

    .line 959
    :cond_9
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_a

    .line 960
    const/4 v14, 0x1

    .line 962
    :cond_a
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_b

    .line 963
    const/16 v17, 0x1

    .line 966
    :cond_b
    const/16 v29, 0x0

    .line 965
    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v15

    .line 967
    const/4 v13, 0x1

    .line 969
    :cond_c
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 901
    .end local v6    # "audioPatchArray":[Landroid/media/AudioPatch;
    .end local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v8    # "audioSink$iterator":Ljava/util/Iterator;
    .end local v14    # "sinkChannelMask":I
    .end local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v16    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .end local v17    # "sinkFormat":I
    .end local v18    # "sinkSamplingRate":I
    .end local v21    # "sourceConfig":Landroid/media/AudioPortConfig;
    .restart local v9    # "gain":Landroid/media/AudioGain;
    .restart local v23    # "sourceGain":Landroid/media/AudioGain;
    .restart local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    :cond_d
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_0

    .line 915
    .end local v9    # "gain":Landroid/media/AudioGain;
    .end local v23    # "sourceGain":Landroid/media/AudioGain;
    .restart local v10    # "gainValue":I
    .restart local v27    # "steps":I
    :cond_e
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    goto/16 :goto_1

    .line 922
    .end local v10    # "gainValue":I
    .end local v27    # "steps":I
    :cond_f
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "No audio source gain with MODE_JOINT support exists."

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 929
    .end local v24    # "sourceGainConfig":Landroid/media/AudioGainConfig;
    .restart local v6    # "audioPatchArray":[Landroid/media/AudioPatch;
    .restart local v16    # "sinkConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPortConfig;>;"
    .restart local v21    # "sourceConfig":Landroid/media/AudioPortConfig;
    :cond_10
    const/4 v13, 0x1

    .local v13, "shouldRecreateAudioPatch":Z
    goto/16 :goto_3

    .line 952
    .end local v13    # "shouldRecreateAudioPatch":Z
    .restart local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .restart local v8    # "audioSink$iterator":Ljava/util/Iterator;
    .restart local v14    # "sinkChannelMask":I
    .restart local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .restart local v17    # "sinkFormat":I
    .restart local v18    # "sinkSamplingRate":I
    :cond_11
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v29

    move/from16 v0, v29

    if-ne v0, v14, :cond_8

    .line 953
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    goto :goto_5

    .line 973
    .end local v7    # "audioSink":Landroid/media/AudioDevicePort;
    .end local v14    # "sinkChannelMask":I
    .end local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    .end local v17    # "sinkFormat":I
    .end local v18    # "sinkSamplingRate":I
    :cond_12
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPortConfig;

    .line 974
    .restart local v15    # "sinkConfig":Landroid/media/AudioPortConfig;
    if-eqz v21, :cond_13

    if-eqz v24, :cond_17

    .line 975
    :cond_13
    const/16 v25, 0x0

    .line 976
    .local v25, "sourceSamplingRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-eqz v29, :cond_1a

    .line 977
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v25

    .line 982
    :cond_14
    :goto_6
    const/16 v20, 0x1

    .line 983
    .local v20, "sourceChannelMask":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_7
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_15

    aget v12, v30, v29

    .line 984
    .local v12, "inChannelMask":I
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v32

    .line 985
    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v33

    .line 984
    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1b

    .line 986
    move/from16 v20, v12

    .line 990
    .end local v12    # "inChannelMask":I
    :cond_15
    const/16 v22, 0x1

    .line 991
    .local v22, "sourceFormat":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v29

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-eqz v29, :cond_16

    .line 992
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v22

    .line 994
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    move/from16 v2, v20

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v21

    .line 996
    const/4 v13, 0x1

    .line 998
    .end local v20    # "sourceChannelMask":I
    .end local v22    # "sourceFormat":I
    .end local v25    # "sourceSamplingRate":I
    :cond_17
    if-eqz v13, :cond_19

    .line 999
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    if-eqz v29, :cond_18

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 1003
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    .line 1005
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    aput-object v21, v30, v29

    .line 1006
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/media/AudioPortConfig;

    .line 1003
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    .line 1007
    const/16 v29, 0x0

    aget-object v29, v6, v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 1008
    if-eqz v24, :cond_19

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    .line 1012
    :cond_19
    return-void

    .line 978
    .restart local v25    # "sourceSamplingRate":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_14

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v25, v29, v30

    goto/16 :goto_6

    .line 983
    .restart local v12    # "inChannelMask":I
    .restart local v20    # "sourceChannelMask":I
    :cond_1b
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_7
.end method

.method private updateAudioSinkLocked()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1081
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1082
    return v3

    .line 1084
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1085
    .local v1, "previousSink":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDevicePort;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 1086
    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v2, :cond_2

    .line 1087
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    .line 1097
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1098
    const/4 v2, 0x1

    return v2

    .line 1090
    :cond_2
    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    .line 1091
    .local v0, "audioSink":Landroid/media/AudioDevicePort;
    if-eqz v0, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1100
    .end local v0    # "audioSink":Landroid/media/AudioDevicePort;
    :cond_3
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1101
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private updateAudioSourceLocked()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1071
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1072
    return v1

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1075
    .local v0, "previousSource":Landroid/media/AudioDevicePort;
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 1076
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    .line 1077
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1027
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1028
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    .line 1032
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 1033
    return v2

    .line 1036
    :cond_1
    return v2
.end method

.method public onMediaStreamVolumeChanged()V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1127
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1129
    return-void

    .line 1126
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .locals 2
    .param p1, "audioType"    # I
    .param p2, "audioAddress"    # Ljava/lang/String;
    .param p3, "samplingRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "format"    # I

    .prologue
    .line 1113
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1114
    :try_start_0
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    .line 1115
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    .line 1117
    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    .line 1118
    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    .line 1119
    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    .line 1121
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1123
    return-void

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v0}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 829
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 831
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStreamVolume(F)V
    .locals 3
    .param p1, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1017
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v0, :cond_0

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1020
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    .line 1021
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1023
    return-void
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .locals 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "config"    # Landroid/media/tv/TvStreamConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 839
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v3

    .line 840
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v4, :cond_0

    .line 841
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 844
    :cond_0
    const/4 v0, 0x0

    .line 845
    .local v0, "result":I
    if-nez p1, :cond_3

    .line 847
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_2

    .line 848
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 849
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 874
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    if-nez v0, :cond_6

    :goto_1
    monitor-exit v3

    return v1

    :cond_2
    monitor-exit v3

    .line 852
    return v1

    .line 856
    :cond_3
    if-nez p2, :cond_4

    monitor-exit v3

    .line 857
    return v2

    .line 860
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    .line 861
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 862
    if-eqz v0, :cond_5

    .line 863
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    .line 867
    :cond_5
    if-nez v0, :cond_1

    .line 868
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v0

    .line 869
    if-nez v0, :cond_1

    .line 870
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_6
    move v1, v2

    .line 875
    goto :goto_1
.end method
