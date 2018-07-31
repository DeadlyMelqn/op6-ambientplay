.class public final Landroid/bluetooth/le/AdvertisingSet;
.super Ljava/lang/Object;
.source "AdvertisingSet.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvertisingSet"


# instance fields
.field private advertiserId:I

.field private final gatt:Landroid/bluetooth/IBluetoothGatt;


# direct methods
.method constructor <init>(ILandroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "advertiserId"    # I
    .param p2, "bluetoothManager"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 48
    :try_start_0
    invoke-interface {p2}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "Failed to get Bluetooth gatt - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to get Bluetooth"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public enableAdvertising(ZII)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "duration"    # I
    .param p3, "maxExtendedAdvertisingEvents"    # I

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothGatt;->enableAdvertisingSet(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAdvertiserId()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    return v0
.end method

.method public getOwnAddress()V
    .locals 3

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothGatt;->getOwnAddress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method setAdvertiserId(I)V
    .locals 0
    .param p1, "advertiserId"    # I

    .prologue
    .line 56
    iput p1, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    .line 57
    return-void
.end method

.method public setAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "advertiseData"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAdvertisingParameters(Landroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/bluetooth/le/AdvertisingSetParameters;

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPeriodicAdvertisingData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "periodicData"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPeriodicAdvertisingEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 177
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingEnable(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPeriodicAdvertisingParameters(Landroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 3
    .param p1, "parameters"    # Landroid/bluetooth/le/PeriodicAdvertisingParameters;

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanResponseData(Landroid/bluetooth/le/AdvertiseData;)V
    .locals 3
    .param p1, "scanResponse"    # Landroid/bluetooth/le/AdvertiseData;

    .prologue
    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSet;->gatt:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/le/AdvertisingSet;->advertiserId:I

    invoke-interface {v1, v2, p1}, Landroid/bluetooth/IBluetoothGatt;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AdvertisingSet"

    const-string/jumbo v2, "remote exception - "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
