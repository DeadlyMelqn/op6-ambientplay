.class public final Landroid/bluetooth/BluetoothInputHost;
.super Ljava/lang/Object;
.source "BluetoothInputHost.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothInputHost$1;,
        Landroid/bluetooth/BluetoothInputHost$2;,
        Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.inputhost.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ERROR_RSP_INVALID_PARAM:B = 0x4t

.field public static final ERROR_RSP_INVALID_RPT_ID:B = 0x2t

.field public static final ERROR_RSP_NOT_READY:B = 0x1t

.field public static final ERROR_RSP_SUCCESS:B = 0x0t

.field public static final ERROR_RSP_UNKNOWN:B = 0xet

.field public static final ERROR_RSP_UNSUPPORTED_REQ:B = 0x3t

.field public static final PROTOCOL_BOOT_MODE:B = 0x0t

.field public static final PROTOCOL_REPORT_MODE:B = 0x1t

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field public static final SUBCLASS1_COMBO:B = -0x40t

.field public static final SUBCLASS1_KEYBOARD:B = 0x40t

.field public static final SUBCLASS1_MOUSE:B = -0x80t

.field public static final SUBCLASS1_NONE:B = 0x0t

.field public static final SUBCLASS2_CARD_READER:B = 0x6t

.field public static final SUBCLASS2_DIGITIZER_TABLED:B = 0x5t

.field public static final SUBCLASS2_GAMEPAD:B = 0x2t

.field public static final SUBCLASS2_JOYSTICK:B = 0x1t

.field public static final SUBCLASS2_REMOTE_CONTROL:B = 0x3t

.field public static final SUBCLASS2_SENSING_DEVICE:B = 0x4t

.field public static final SUBCLASS2_UNCATEGORIZED:B

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothInputHost;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "-this"    # Landroid/bluetooth/BluetoothInputHost;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get2(Landroid/bluetooth/BluetoothInputHost;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Landroid/bluetooth/BluetoothInputHost;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    .locals 1
    .param p0, "-this"    # Landroid/bluetooth/BluetoothInputHost;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    return-object v0
.end method

.method static synthetic -get4(Landroid/bluetooth/BluetoothInputHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "-this"    # Landroid/bluetooth/BluetoothInputHost;

    .prologue
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/bluetooth/BluetoothInputHost;Landroid/bluetooth/IBluetoothInputHost;)Landroid/bluetooth/IBluetoothInputHost;
    .locals 0
    .param p0, "-this"    # Landroid/bluetooth/BluetoothInputHost;
    .param p1, "-value"    # Landroid/bluetooth/IBluetoothInputHost;

    .prologue
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Landroid/bluetooth/BluetoothInputHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    new-instance v2, Landroid/bluetooth/BluetoothInputHost$1;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputHost$1;-><init>(Landroid/bluetooth/BluetoothInputHost;)V

    .line 166
    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 198
    new-instance v2, Landroid/bluetooth/BluetoothInputHost$2;

    invoke-direct {v2, p0}, Landroid/bluetooth/BluetoothInputHost$2;-><init>(Landroid/bluetooth/BluetoothInputHost;)V

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    .line 217
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "BluetoothInputHost"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 221
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 223
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 224
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 226
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothInputHost;->doBind()Z

    .line 233
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method close()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 249
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "close()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    .line 252
    .local v2, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v2, :cond_0

    .line 254
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v2, v3}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v4

    .line 261
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v3, :cond_1

    .line 262
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    :try_start_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v4

    .line 271
    iput-object v6, p0, Landroid/bluetooth/BluetoothInputHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 272
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 266
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "close: could not unbind HID Dev service: "

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 260
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 522
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connect(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v1, 0x0

    .line 526
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 527
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 529
    :try_start_0
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 537
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 530
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 546
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "disconnect(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v1, 0x0

    .line 550
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 551
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 553
    :try_start_0
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 561
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 554
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 555
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method doBind()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 236
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothInputHost;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 238
    .local v0, "comp":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/bluetooth/BluetoothInputHost;->mConnection:Landroid/content/ServiceConnection;

    .line 240
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 239
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not bind to Bluetooth HID Device Service with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v5

    .line 244
    :cond_1
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Bound to HID Device Service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v2, 0x1

    return v2
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getConnectedDevices()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 281
    .local v1, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v1, :cond_0

    .line 283
    :try_start_0
    invoke-interface {v1}, Landroid/bluetooth/IBluetoothInputHost;->getConnectedDevices()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 288
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 318
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConnectionState(): device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 321
    .local v1, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v1, :cond_0

    .line 323
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothInputHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 328
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDevicesMatchingConnectionStates(): states="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 301
    .local v1, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v1, :cond_0

    .line 303
    :try_start_0
    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothInputHost;->getDevicesMatchingConnectionStates([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 308
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceCallback;)Z
    .locals 8
    .param p1, "sdp"    # Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    .param p2, "inQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p3, "outQos"    # Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .param p4, "callback"    # Landroid/bluetooth/BluetoothHidDeviceCallback;

    .prologue
    .line 354
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp(): sdp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " inQos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " outQos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 355
    const-string/jumbo v4, " callback="

    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v7, 0x0

    .line 359
    .local v7, "result":Z
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 360
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 363
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 364
    .local v0, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v0, :cond_2

    .line 367
    :try_start_0
    new-instance v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;-><init>()V

    .line 369
    .local v1, "config":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    new-instance v5, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;

    invoke-direct {v5, p4}, Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothHidDeviceCallback;)V

    .local v5, "cbw":Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 370
    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothInputHost;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 378
    .end local v1    # "config":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .end local v5    # "cbw":Landroid/bluetooth/BluetoothInputHost$BluetoothHidDeviceCallbackWrapper;
    .end local v7    # "result":Z
    :goto_0
    return v7

    .line 371
    .restart local v7    # "result":Z
    :catch_0
    move-exception v6

    .line 372
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_2
    sget-object v2, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "type"    # B
    .param p3, "id"    # B
    .param p4, "data"    # [B

    .prologue
    .line 447
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replyReport(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/4 v1, 0x0

    .line 451
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 452
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 454
    :try_start_0
    invoke-interface {v2, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothInputHost;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 455
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "error"    # B

    .prologue
    .line 473
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reportError(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v1, 0x0

    .line 477
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 478
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 480
    :try_start_0
    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothInputHost;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 488
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 481
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "id"    # I
    .param p3, "data"    # [B

    .prologue
    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 424
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 426
    :try_start_0
    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetoothInputHost;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 434
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 427
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 497
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unplug(): device="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 v1, 0x0

    .line 501
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 502
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 504
    :try_start_0
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->unplug(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 505
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 509
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    .locals 5
    .param p1, "config"    # Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .prologue
    .line 394
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unregisterApp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, "result":Z
    iget-object v2, p0, Landroid/bluetooth/BluetoothInputHost;->mService:Landroid/bluetooth/IBluetoothInputHost;

    .line 399
    .local v2, "service":Landroid/bluetooth/IBluetoothInputHost;
    if-eqz v2, :cond_0

    .line 401
    :try_start_0
    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetoothInputHost;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 409
    .end local v1    # "result":Z
    :goto_0
    return v1

    .line 402
    .restart local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v3, Landroid/bluetooth/BluetoothInputHost;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Proxy not attached to service"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
