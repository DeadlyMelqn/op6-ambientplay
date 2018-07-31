.class Lcom/android/settings/bluetooth/BluetoothEnabler$1;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/BluetoothEnabler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get0(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get0(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get4(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)Z

    move-result v0

    .line 68
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get4(Lcom/android/settings/bluetooth/BluetoothEnabler;)Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get2(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get1(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$1;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;->-get3(Lcom/android/settings/bluetooth/BluetoothEnabler;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchWidgetController;->updateTitle(Z)V

    .line 72
    return-void

    .line 75
    .end local v0    # "status":Z
    :cond_0
    return-void
.end method
