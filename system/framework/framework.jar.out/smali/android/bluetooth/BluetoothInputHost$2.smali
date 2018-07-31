.class Landroid/bluetooth/BluetoothInputHost$2;
.super Ljava/lang/Object;
.source "BluetoothInputHost.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 200
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothInputHost$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputHost;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 202
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 204
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    .line 203
    const/16 v2, 0x13

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {}, Landroid/bluetooth/BluetoothInputHost;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothInputHost;->-set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;

    .line 210
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost$2;->this$0:Landroid/bluetooth/BluetoothInputHost;

    invoke-static {v0}, Landroid/bluetooth/BluetoothInputHost;->-get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 213
    :cond_0
    return-void
.end method
