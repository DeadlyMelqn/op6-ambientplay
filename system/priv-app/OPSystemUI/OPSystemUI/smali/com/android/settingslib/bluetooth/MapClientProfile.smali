.class public final Lcom/android/settingslib/bluetooth/MapClientProfile;
.super Ljava/lang/Object;
.source "MapClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMapClient;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settingslib/bluetooth/MapClientProfile;->V:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settingslib/bluetooth/MapClientProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settingslib/bluetooth/MapClientProfile;)Landroid/bluetooth/BluetoothMapClient;
    .locals 1
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;

    .prologue
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/bluetooth/MapClientProfile;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settingslib/bluetooth/MapClientProfile;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0
    .param p0, "-this"    # Lcom/android/settingslib/bluetooth/MapClientProfile;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothMapClient;

    .prologue
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sput-boolean v2, Lcom/android/settingslib/bluetooth/MapClientProfile;->V:Z

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 49
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 50
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/settingslib/bluetooth/MapClientProfile;->UUIDS:[Landroid/os/ParcelUuid;

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .param p3, "deviceManager"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .param p4, "profileManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 101
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 102
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapClientProfile;Lcom/android/settingslib/bluetooth/MapClientProfile$MapClientServiceListener;)V

    .line 104
    const/16 v2, 0x12

    .line 103
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 105
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/MapClientProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "connectedDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v1, "MapClientProfile"

    const-string/jumbo v2, "Ignoring Connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x1

    return v1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v1, 0x64

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-le v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 201
    sget-boolean v1, Lcom/android/settingslib/bluetooth/MapClientProfile;->V:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MapClientProfile"

    const-string/jumbo v2, "finalize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-eqz v1, :cond_1

    .line 204
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    .line 204
    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "MapClientProfile"

    const-string/jumbo v2, "Error cleaning up MAP Client proxy"

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
    .line 163
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    .line 165
    const/4 v1, 0x2

    .line 166
    const/4 v2, 0x1

    .line 167
    const/4 v3, 0x3

    .line 165
    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothMapClient;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v1, :cond_0

    return v0

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .prologue
    const/16 v1, 0x64

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    if-eqz p2, :cond_2

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapClientProfile;->mService:Landroid/bluetooth/BluetoothMapClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string/jumbo v0, "MAP Client"

    return-object v0
.end method
