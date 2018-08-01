.class public Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;
.super Landroid/content/BroadcastReceiver;
.source "ConnectedDeviceSignalController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;
    }
.end annotation


# static fields
.field private static final SIGNAL_STRENGTH_ICONS:[I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private final mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mIconScaleFactor:F

.field private final mNetworkSignalView:Landroid/widget/ImageView;

.field private final mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

.field private final mSignalsView:Landroid/view/View;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;
    .param p1, "-value"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    .line 30
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "signalsView"    # Landroid/view/View;

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 240
    new-instance v1, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController$1;-><init>(Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mContext:Landroid/content/Context;

    .line 76
    const-class v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    const v2, 0x7f0a008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 79
    iput-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 83
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e8

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 84
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mIconScaleFactor:F

    .line 85
    new-instance v1, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    .line 87
    new-instance v2, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget v4, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mIconScaleFactor:F

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mHfpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 94
    const/16 v4, 0x10

    .line 93
    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 95
    return-void
.end method

.method private processActionAgEvent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 165
    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, "networkStatus":I
    if-eq v0, v4, :cond_0

    .line 172
    if-nez v0, :cond_0

    .line 173
    const v3, 0x7f080306

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    .line 178
    :cond_0
    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    .line 177
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 179
    .local v2, "signalStrength":I
    if-eq v2, v4, :cond_1

    .line 184
    sget-object v3, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    aget v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    .line 187
    :cond_1
    const-string/jumbo v3, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 194
    .local v1, "roamingStatus":I
    return-void
.end method

.method private setNetworkSignalIcon(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    .line 201
    const/4 v1, 0x5

    .line 200
    invoke-static {p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->getState(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setLevel(I)Z

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    return-void
.end method

.method private updateViewVisibility(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "newState"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 206
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 212
    :cond_0
    return-void

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object v0

    .line 217
    .local v0, "featuresBundle":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 218
    return-void

    .line 222
    :cond_2
    const-string/jumbo v2, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    .line 221
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 223
    .local v1, "signalStrength":I
    if-eq v1, v3, :cond_3

    .line 228
    sget-object v2, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->SIGNAL_STRENGTH_ICONS:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->setNetworkSignalIcon(I)V

    .line 238
    .end local v0    # "featuresBundle":Landroid/os/Bundle;
    .end local v1    # "signalStrength":I
    :cond_3
    :goto_0
    return-void

    .line 230
    :cond_4
    if-nez p2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mNetworkSignalView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mSignalsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->processActionAgEvent(Landroid/content/Intent;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string/jumbo v3, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const-string/jumbo v3, "android.bluetooth.profile.extra.STATE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "newState":I
    const-string/jumbo v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->updateViewVisibility(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->mController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
