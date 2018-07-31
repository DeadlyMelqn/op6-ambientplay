.class public final Landroid/bluetooth/le/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"


# static fields
.field private static final SKIP_MAX:I = 0x1f3

.field private static final SKIP_MIN:I = 0x0

.field private static final SYNC_STARTING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PeriodicAdvertisingManager"

.field private static final TIMEOUT_MAX:I = 0x4000

.field private static final TIMEOUT_MIN:I = 0xa


# instance fields
.field callbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/le/PeriodicAdvertisingCallback;",
            "Landroid/bluetooth/le/IPeriodicAdvertisingCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 1
    .param p1, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    .line 68
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 69
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    .line 70
    return-void
.end method

.method private wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 197
    new-instance v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V

    return-object v0
.end method


# virtual methods
.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 6
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .prologue
    .line 92
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V

    .line 93
    return-void
.end method

.method public registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)V
    .locals 10
    .param p1, "scanResult"    # Landroid/bluetooth/le/ScanResult;
    .param p2, "skip"    # I
    .param p3, "timeout"    # I
    .param p4, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p4, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_2

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scanResult must contain a valid sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    if-ltz p2, :cond_3

    const/16 v0, 0x1f3

    if-le p2, v0, :cond_4

    .line 129
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 130
    const-string/jumbo v1, "timeout must be between 10 and 16384"

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_4
    const/16 v0, 0xa

    if-lt p3, v0, :cond_5

    const/16 v0, 0x4000

    if-le p3, v0, :cond_6

    .line 134
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    const-string/jumbo v1, "timeout must be between 10 and 16384"

    .line 134
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_6
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 149
    .local v8, "gatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez p5, :cond_7

    .line 150
    new-instance p5, Landroid/os/Handler;

    .end local p5    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 152
    .restart local p5    # "handler":Landroid/os/Handler;
    :cond_7
    invoke-direct {p0, p4, p5}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    move-result-object v9

    .line 153
    .local v9, "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    invoke-interface {v0, p4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :try_start_1
    invoke-interface {v8, p1, p2, p3, v9}, Landroid/bluetooth/IBluetoothGatt;->registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    return-void

    .line 141
    .end local v8    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v9    # "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :catch_0
    move-exception v7

    .line 142
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PeriodicAdvertisingManager"

    const-string/jumbo v2, "Failed to get Bluetooth gatt - "

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v3

    .line 145
    const/4 v6, 0x2

    move-object v0, p4

    move v4, p2

    move v5, p3

    .line 143
    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 146
    return-void

    .line 157
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v8    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v9    # "wrapped":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :catch_1
    move-exception v7

    .line 158
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PeriodicAdvertisingManager"

    const-string/jumbo v1, "Failed to register sync - "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    return-void
.end method

.method public unregisterSync(Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "callback can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, "gatt":Landroid/bluetooth/IBluetoothGatt;
    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 184
    .local v2, "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    if-nez v2, :cond_1

    .line 185
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "callback was not properly registered"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    .end local v1    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v2    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PeriodicAdvertisingManager"

    const-string/jumbo v4, "Failed to get Bluetooth gatt - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-void

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gatt":Landroid/bluetooth/IBluetoothGatt;
    .restart local v2    # "wrapper":Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
    :cond_1
    :try_start_1
    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    return-void

    .line 190
    :catch_1
    move-exception v0

    .line 191
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PeriodicAdvertisingManager"

    const-string/jumbo v4, "Failed to cancel sync creation - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    return-void
.end method
