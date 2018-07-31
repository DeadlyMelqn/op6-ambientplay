.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActuallyCachedState"
.end annotation


# instance fields
.field private mBondState:I

.field private final mDevice:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxConnectionState:I

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    return v0
.end method

.method private constructor <init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;)V
    .locals 1
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "uiHandler"    # Landroid/os/Handler;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    .line 307
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mMaxConnectionState:I

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mDevice:Ljava/lang/ref/WeakReference;

    .line 311
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    .line 312
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;)V
    .locals 0
    .param p1, "device"    # Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "-this2"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;-><init>(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 316
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mDevice:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 317
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mBondState:I

    .line 319
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mMaxConnectionState:I

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$ActuallyCachedState;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    :cond_0
    return-void
.end method
