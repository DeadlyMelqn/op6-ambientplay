.class Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;
.super Ljava/lang/Object;
.source "OpBluetoothHeadset.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/oneplus/OpBluetoothHeadset;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/oneplus/OpBluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/oneplus/OpBluetoothHeadset;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/oneplus/OpBluetoothHeadset;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;->this$0:Landroid/bluetooth/oneplus/OpBluetoothHeadset;

    .line 26
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
    .line 38
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 39
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;->this$0:Landroid/bluetooth/oneplus/OpBluetoothHeadset;

    invoke-static {v0, p2}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->-set0(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string/jumbo v0, "OpBluetoothHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Bluetooth Profile connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    .line 30
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 31
    iget-object v0, p0, Landroid/bluetooth/oneplus/OpBluetoothHeadset$1;->this$0:Landroid/bluetooth/oneplus/OpBluetoothHeadset;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/bluetooth/oneplus/OpBluetoothHeadset;->-set0(Landroid/bluetooth/oneplus/OpBluetoothHeadset;Landroid/bluetooth/BluetoothProfile;)Landroid/bluetooth/BluetoothProfile;

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    const-string/jumbo v0, "OpBluetoothHeadset"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Bluetooth Profile disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method