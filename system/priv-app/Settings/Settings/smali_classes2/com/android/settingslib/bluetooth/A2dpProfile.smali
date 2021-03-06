.class public Lcom/android/settingslib/bluetooth/A2dpProfile;
.super Ljava/lang/Object;
.source "A2dpProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "A2DP"

.field private static final ORDINAL:I = 0x1

.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "A2dpProfile"

.field private static V:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dp;

.field private mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

.field mWrapperFactory:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/A2dpProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/A2dpProfile;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/A2dpProfile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;)Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/A2dpProfile;
    .param p1, "-value"    # Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    sput-boolean v2, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 57
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 58
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 106
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 107
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 108
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl$Factory;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapperImpl$Factory;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mWrapperFactory:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Lcom/android/settingslib/bluetooth/A2dpProfile$A2dpServiceListener;)V

    .line 110
    const/4 v2, 0x2

    .line 109
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 111
    return-void
.end method

.method static synthetic lambda$-com_android_settingslib_bluetooth_A2dpProfile_10475(Landroid/bluetooth/BluetoothCodecConfig;Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2
    .param p0, "a"    # Landroid/bluetooth/BluetoothCodecConfig;
    .param p1, "b"    # Landroid/bluetooth/BluetoothCodecConfig;

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 135
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_2

    .line 138
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sink$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 139
    .local v0, "sink":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const-string/jumbo v3, "A2dpProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Connecting to device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : disconnect skipped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "sink":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "sink$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 149
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    return v4

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 152
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dev$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 153
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    sget-boolean v3, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "A2dpProfile"

    const-string/jumbo v4, "Downgrade priority as useris disconnecting the headset"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-le v3, v5, :cond_3

    .line 158
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1, v5}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3

    .line 164
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "dev$iterator":Ljava/util/Iterator;
    :cond_4
    return v4
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 335
    sget-boolean v1, Lcom/android/settingslib/bluetooth/A2dpProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 338
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 338
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 340
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "A2dpProfile"

    const-string/jumbo v2, "Error cleaning up A2DP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 129
    const/4 v1, 0x2

    .line 130
    const/4 v2, 0x1

    .line 131
    const/4 v3, 0x3

    .line 129
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v4, 0x0

    .line 168
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v3, :cond_0

    .line 169
    return v4

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 172
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 173
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dev$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 174
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    return v3

    .line 179
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "dev$iterator":Ljava/util/Iterator;
    :cond_2
    return v4
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 331
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_headphones_a2dp:I

    return v0
.end method

.method public getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 11
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 256
    sget v4, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality_unknown_codec:I

    .line 257
    .local v4, "unknownCodecId":I
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 259
    :cond_0
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 263
    :cond_1
    const/4 v3, 0x0

    .line 264
    .local v3, "selectable":[Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v5}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 265
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v5}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v3

    .local v3, "selectable":[Landroid/bluetooth/BluetoothCodecConfig;
    sget-object v5, Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;->$INST$0:Lcom/android/settingslib/bluetooth/-$Lambda$0Io0jpoxdNgAS6kbk1mVtf_DGDc;

    .line 267
    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 273
    .end local v3    # "selectable":[Landroid/bluetooth/BluetoothCodecConfig;
    :cond_2
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ge v5, v7, :cond_5

    .line 274
    :cond_3
    const/4 v0, 0x0

    .line 275
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 276
    :cond_4
    const v1, 0xf4240

    .line 278
    .local v1, "codecType":I
    :goto_1
    const/4 v2, -0x1

    .line 279
    .local v2, "index":I
    packed-switch v1, :pswitch_data_0

    .line 297
    :goto_2
    if-gez v2, :cond_7

    .line 298
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 274
    .end local v1    # "codecType":I
    .end local v2    # "index":I
    :cond_5
    aget-object v0, v3, v10

    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    goto :goto_0

    .line 276
    .end local v0    # "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    .restart local v1    # "codecType":I
    goto :goto_1

    .line 281
    .restart local v2    # "index":I
    :pswitch_0
    const/4 v2, 0x1

    .line 282
    goto :goto_2

    .line 284
    :pswitch_1
    const/4 v2, 0x2

    .line 285
    goto :goto_2

    .line 287
    :pswitch_2
    const/4 v2, 0x3

    .line 288
    goto :goto_2

    .line 290
    :pswitch_3
    const/4 v2, 0x4

    .line 291
    goto :goto_2

    .line 293
    :pswitch_4
    const/4 v2, 0x5

    .line 294
    goto :goto_2

    .line 300
    :cond_7
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp_high_quality:I

    new-array v7, v7, [Ljava/lang/Object;

    .line 301
    iget-object v8, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/settingslib/R$array;->bluetooth_a2dp_codec_titles:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v2

    aput-object v8, v7, v10

    .line 300
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 313
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_a2dp:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 318
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 326
    :pswitch_0
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    .line 320
    :pswitch_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_use_for:I

    return v1

    .line 323
    :pswitch_2
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_a2dp_profile_summary_connected:I

    return v1

    .line 318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method isA2dpPlaying()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    return v3

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 205
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothA2dp;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_1
    return v3
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 219
    iget-object v4, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v4, p1}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 220
    .local v1, "enabled":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 221
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    .line 222
    if-eqz v4, :cond_2

    .line 227
    return v2

    .line 229
    :cond_2
    const/4 v0, 0x0

    .line 230
    .local v0, "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    .line 233
    .end local v0    # "codecConfig":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_3
    if-eqz v0, :cond_4

    .line 234
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 236
    :cond_4
    return v3
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    return v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "enabled"    # Z

    .prologue
    .line 241
    if-eqz p2, :cond_0

    .line 242
    const/4 v0, 0x1

    .line 244
    .local v0, "prefValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v1, p1, v0}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 246
    return-void

    .line 243
    .end local v0    # "prefValue":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "prefValue":I
    goto :goto_0

    .line 248
    :cond_1
    if-eqz p2, :cond_2

    .line 249
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs()V

    .line 253
    :goto_1
    return-void

    .line 251
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs()V

    goto :goto_1
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    if-eqz p2, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dp;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method setWrapperFactory(Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;)V
    .locals 0
    .param p1, "factory"    # Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mWrapperFactory:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper$Factory;

    .line 116
    return-void
.end method

.method public supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    .line 214
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/A2dpProfile;->mServiceWrapper:Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;

    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothA2dpWrapper;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 215
    .local v0, "support":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    const-string/jumbo v0, "A2DP"

    return-object v0
.end method
