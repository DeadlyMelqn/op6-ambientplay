.class final Landroid/bluetooth/BluetoothDevice$1;
.super Landroid/bluetooth/IBluetoothManagerCallback$Stub;
.source "BluetoothDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothManagerCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBluetoothServiceDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 789
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0

    .line 790
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 792
    return-void

    .line 789
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    .locals 3
    .param p1, "bluetoothService"    # Landroid/bluetooth/IBluetooth;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 779
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    monitor-enter v1

    .line 780
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->-get0()Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 781
    const-string/jumbo v0, "BluetoothDevice"

    const-string/jumbo v2, "sService is not NULL"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->-set0(Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 785
    return-void

    .line 779
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onBrEdrDown()V
    .locals 0

    .prologue
    .line 797
    return-void
.end method
