.class Lcom/android/settings/DevelopmentSettings$3;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DevelopmentSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    .line 3141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 3144
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->-get2(Lcom/android/settings/DevelopmentSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3145
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v1, p2}, Lcom/android/settings/DevelopmentSettings;->-set0(Lcom/android/settings/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3146
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->-get1(Lcom/android/settings/DevelopmentSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "mA2dpDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-exit v2

    .line 3148
    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v1}, Lcom/android/settings/DevelopmentSettings;->-wrap2(Lcom/android/settings/DevelopmentSettings;)V

    .line 3149
    return-void

    .line 3144
    .end local v0    # "mA2dpDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 3152
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->-get2(Lcom/android/settings/DevelopmentSettings;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3155
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v2}, Lcom/android/settings/DevelopmentSettings;->-get1(Lcom/android/settings/DevelopmentSettings;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/DevelopmentSettings;->-set2(Lcom/android/settings/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 3157
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settings/DevelopmentSettings;->-set0(Lcom/android/settings/DevelopmentSettings;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3160
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$3;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->-wrap2(Lcom/android/settings/DevelopmentSettings;)V

    .line 3161
    return-void

    .line 3152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
