.class Landroid/bluetooth/BluetoothInputHost$1;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "BluetoothInputHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothInputHost;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothInputHost;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothInputHost;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 167
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 6
    .param p1, "up"    # Z

    .prologue
    .line 170
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onBluetoothStateChange: up="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    move-result-object v4

    monitor-enter v4

    .line 172
    if-nez p1, :cond_1

    .line 173
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Unbinding service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 175
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get2(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v5}, Landroid/bluetooth/BluetoothInputHost;->-get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v4

    .line 195
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not unbind service:"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 184
    :cond_1
    :try_start_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v3}, Landroid/bluetooth/BluetoothInputHost;->-get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v3

    if-nez v3, :cond_0

    .line 185
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "Binding HID Device service..."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost$1;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputHost;->doBind()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/SecurityException;
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "onBluetoothStateChange: could not bind to HID Dev service: "

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method