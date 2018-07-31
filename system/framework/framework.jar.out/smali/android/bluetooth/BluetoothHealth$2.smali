.class Landroid/bluetooth/BluetoothHealth$2;
.super Ljava/lang/Object;
.source "BluetoothHealth.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHealth;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHealth;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHealth;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    .line 528
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
    .line 530
    const-string/jumbo v0, "BluetoothHealth"

    const-string/jumbo v1, "Proxy object connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHealth;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothHealth;->-set0(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 533
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->-get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->-get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    const/4 v2, 0x3

    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 536
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 538
    const-string/jumbo v0, "BluetoothHealth"

    const-string/jumbo v1, "Proxy object disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothHealth;->-set0(Landroid/bluetooth/BluetoothHealth;Landroid/bluetooth/IBluetoothHealth;)Landroid/bluetooth/IBluetoothHealth;

    .line 540
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->-get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Landroid/bluetooth/BluetoothHealth$2;->this$0:Landroid/bluetooth/BluetoothHealth;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHealth;->-get3(Landroid/bluetooth/BluetoothHealth;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 543
    :cond_0
    return-void
.end method
