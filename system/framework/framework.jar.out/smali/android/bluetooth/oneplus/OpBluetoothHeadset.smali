.class public Landroid/bluetooth/oneplus/OpBluetoothHeadset;
.super Ljava/lang/Object;
.source "OpBluetoothHeadset.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "OpBluetoothHeadset"


# instance fields
.field private mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHfpProxy:Landroid/bluetooth/BluetoothProfile;


# direct methods
.method static synthetic -set0(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0
    .param p0, "-this"    # Landroid/bluetooth/oneplus/OpBluetoothHeadset;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method static synthetic -set1(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;
    .locals 0
    .param p0, "-this"    # Landroid/bluetooth/oneplus/OpBluetoothHeadset;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;-><init>(Landroid/bluetooth/oneplus/OpBluetoothHeadset;)V

    .line 43
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 45
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Landroid/bluetooth/oneplus/OpBluetoothHeadset$2;

    invoke-direct {v1, p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset$2;-><init>(Landroid/bluetooth/oneplus/OpBluetoothHeadset;)V

    .line 62
    const/4 v2, 0x1

    .line 45
    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 63
    return-void
.end method

.method private isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 71
    :try_start_0
    const-string/jumbo v1, "OpBluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bluetooth Device Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    if-eqz v1, :cond_1

    .line 74
    :cond_0
    return v5

    .line 76
    :cond_1
    return v4

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "exception":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "OpBluetoothHeadset"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v4
.end method

.method private isOpBluetoothAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 134
    iget-object v1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OpBluetoothHeadset"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to close Bluetooth related proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isOpA2dpConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mA2dpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 93
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    const/4 v2, 0x1

    return v2

    .line 100
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return v3

    .line 104
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_2
    return v3
.end method

.method public isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 85
    const-string/jumbo v0, "OpBluetoothHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOpBluetoothAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isBluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-direct {p0, p1}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpBluetoothHeadsetConnected()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpHfpConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOpHfpConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->mHfpProxy:Landroid/bluetooth/BluetoothProfile;

    invoke-interface {v2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 111
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v0}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->isOpBluetoothHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x1

    return v2

    .line 118
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    return v3

    .line 122
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_2
    return v3
.end method
