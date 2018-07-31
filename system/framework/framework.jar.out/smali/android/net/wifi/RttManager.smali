.class public Landroid/net/wifi/RttManager;
.super Ljava/lang/Object;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/RttManager$Capabilities;,
        Landroid/net/wifi/RttManager$ParcelableRttParams;,
        Landroid/net/wifi/RttManager$ParcelableRttResults;,
        Landroid/net/wifi/RttManager$ResponderCallback;,
        Landroid/net/wifi/RttManager$ResponderConfig;,
        Landroid/net/wifi/RttManager$RttCapabilities;,
        Landroid/net/wifi/RttManager$RttClient;,
        Landroid/net/wifi/RttManager$RttListener;,
        Landroid/net/wifi/RttManager$RttParams;,
        Landroid/net/wifi/RttManager$RttResult;,
        Landroid/net/wifi/RttManager$ServiceHandler;,
        Landroid/net/wifi/RttManager$WifiInformationElement;
    }
.end annotation


# static fields
.field public static final BASE:I = 0x27200

.field public static final CMD_OP_ABORTED:I = 0x27204

.field public static final CMD_OP_DISABLE_RESPONDER:I = 0x27206

.field public static final CMD_OP_ENABLE_RESPONDER:I = 0x27205

.field public static final CMD_OP_ENALBE_RESPONDER_FAILED:I = 0x27208

.field public static final CMD_OP_ENALBE_RESPONDER_SUCCEEDED:I = 0x27207

.field public static final CMD_OP_FAILED:I = 0x27202

.field public static final CMD_OP_REG_BINDER:I = 0x27209

.field public static final CMD_OP_START_RANGING:I = 0x27200

.field public static final CMD_OP_STOP_RANGING:I = 0x27201

.field public static final CMD_OP_SUCCEEDED:I = 0x27203

.field private static final DBG:Z = false

.field public static final DESCRIPTION_KEY:Ljava/lang/String; = "android.net.wifi.RttManager.Description"

.field private static final INVALID_KEY:I = 0x0

.field public static final PREAMBLE_HT:I = 0x2

.field public static final PREAMBLE_LEGACY:I = 0x1

.field public static final PREAMBLE_VHT:I = 0x4

.field public static final REASON_INITIATOR_NOT_ALLOWED_WHEN_RESPONDER_ON:I = -0x6

.field public static final REASON_INVALID_LISTENER:I = -0x3

.field public static final REASON_INVALID_REQUEST:I = -0x4

.field public static final REASON_NOT_AVAILABLE:I = -0x2

.field public static final REASON_PERMISSION_DENIED:I = -0x5

.field public static final REASON_UNSPECIFIED:I = -0x1

.field public static final RTT_BW_10_SUPPORT:I = 0x2

.field public static final RTT_BW_160_SUPPORT:I = 0x20

.field public static final RTT_BW_20_SUPPORT:I = 0x4

.field public static final RTT_BW_40_SUPPORT:I = 0x8

.field public static final RTT_BW_5_SUPPORT:I = 0x1

.field public static final RTT_BW_80_SUPPORT:I = 0x10

.field public static final RTT_CHANNEL_WIDTH_10:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_160:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_20:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_40:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_5:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_80P80:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_CHANNEL_WIDTH_UNSPECIFIED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_PEER_NAN:I = 0x5

.field public static final RTT_PEER_P2P_CLIENT:I = 0x4

.field public static final RTT_PEER_P2P_GO:I = 0x3

.field public static final RTT_PEER_TYPE_AP:I = 0x1

.field public static final RTT_PEER_TYPE_STA:I = 0x2

.field public static final RTT_PEER_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_STATUS_ABORTED:I = 0x8

.field public static final RTT_STATUS_FAILURE:I = 0x1

.field public static final RTT_STATUS_FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final RTT_STATUS_FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final RTT_STATUS_FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final RTT_STATUS_FAIL_INVALID_TS:I = 0x9

.field public static final RTT_STATUS_FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final RTT_STATUS_FAIL_NO_CAPABILITY:I = 0x7

.field public static final RTT_STATUS_FAIL_NO_RSP:I = 0x2

.field public static final RTT_STATUS_FAIL_PROTOCOL:I = 0xa

.field public static final RTT_STATUS_FAIL_REJECTED:I = 0x3

.field public static final RTT_STATUS_FAIL_SCHEDULE:I = 0xb

.field public static final RTT_STATUS_FAIL_TM_TIMEOUT:I = 0x5

.field public static final RTT_STATUS_INVALID_REQ:I = 0xd

.field public static final RTT_STATUS_NO_WIFI:I = 0xe

.field public static final RTT_STATUS_SUCCESS:I = 0x0

.field public static final RTT_TYPE_11_MC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_11_V:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RTT_TYPE_ONE_SIDED:I = 0x1

.field public static final RTT_TYPE_TWO_SIDED:I = 0x2

.field public static final RTT_TYPE_UNSPECIFIED:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RttManager"


# instance fields
.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mCapabilitiesLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

.field private final mService:Landroid/net/wifi/IRttManager;


# direct methods
.method static synthetic -set0(Landroid/net/wifi/RttManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "-this"    # Landroid/net/wifi/RttManager;
    .param p1, "-value"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/RttManager;
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/wifi/RttManager;I)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/RttManager;
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IRttManager;Landroid/os/Looper;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IRttManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x1

    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    .line 1246
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    .line 1247
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    .line 1250
    iput v5, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 1265
    iput-object p1, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    .line 1266
    iput-object p2, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    .line 1267
    const/4 v3, 0x0

    .line 1268
    .local v3, "messenger":Landroid/os/Messenger;
    new-array v2, v5, [I

    .line 1270
    .local v2, "key":[I
    :try_start_0
    const-string/jumbo v4, "RttManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Get the messenger from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v2}, Landroid/net/wifi/IRttManager;->getMessenger(Landroid/os/IBinder;[I)Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1276
    .local v3, "messenger":Landroid/os/Messenger;
    if-nez v3, :cond_0

    .line 1277
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "getMessenger() returned null!  This is invalid."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1272
    .local v3, "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 1273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1280
    .end local v0    # "e":Landroid/os/RemoteException;
    .local v3, "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v4, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v4}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1282
    new-instance v1, Landroid/net/wifi/RttManager$ServiceHandler;

    invoke-direct {v1, p0, p3}, Landroid/net/wifi/RttManager$ServiceHandler;-><init>(Landroid/net/wifi/RttManager;Landroid/os/Looper;)V

    .line 1283
    .local v1, "handler":Landroid/os/Handler;
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/RttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v1, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 1286
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1287
    new-instance v5, Landroid/net/wifi/RttManager$RttClient;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/net/wifi/RttManager$RttClient;-><init>(Ljava/lang/String;)V

    .line 1286
    const v6, 0x11001

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 1288
    iget-object v4, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v5, 0x0

    aget v5, v2, v5

    const v6, 0x27209

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 1289
    return-void
.end method

.method private getListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1326
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1327
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1328
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "listener":Ljava/lang/Object;
    monitor-exit v2

    .line 1329
    return-object v0

    .line 1327
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .locals 4
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1334
    if-nez p1, :cond_0

    return v3

    .line 1335
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1336
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1337
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    monitor-exit v2

    .line 1338
    return v3

    .line 1340
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1335
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1297
    if-nez p1, :cond_0

    return v1

    .line 1299
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1301
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 1302
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 1303
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1305
    return v0

    .line 1299
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private putListenerIfAbsent(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1310
    if-nez p1, :cond_0

    return v1

    .line 1311
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1312
    :try_start_0
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1313
    .local v0, "key":I
    if-eqz v0, :cond_1

    monitor-exit v2

    .line 1314
    return v0

    .line 1317
    :cond_1
    :try_start_1
    iget v0, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .end local v0    # "key":I
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/RttManager;->mListenerKey:I

    .line 1318
    .restart local v0    # "key":I
    if-eqz v0, :cond_1

    .line 1319
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1320
    return v0

    .line 1311
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    .line 1355
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    .line 1356
    .local v0, "key":I
    if-nez v0, :cond_0

    return v0

    .line 1357
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1358
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1359
    return v0

    .line 1357
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 1346
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1347
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1348
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1349
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1350
    return-object v0

    .line 1347
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z
    .locals 5
    .param p1, "params"    # Landroid/net/wifi/RttManager$RttParams;
    .param p2, "index"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 976
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    if-nez v0, :cond_0

    .line 977
    invoke-virtual {p0}, Landroid/net/wifi/RttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v0

    if-nez v0, :cond_0

    .line 978
    const-string/jumbo v0, "RttManager"

    const-string/jumbo v1, "Can not get RTT capabilities"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RTT chip is not working"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_0
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    if-eq v0, v2, :cond_1

    .line 984
    return v3

    .line 985
    :cond_1
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v0, v2, :cond_2

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-eq v0, v1, :cond_2

    .line 987
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal Request Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return v3

    .line 989
    :cond_2
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v0, v2, :cond_3

    .line 990
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->oneSidedRttSupported:Z

    xor-int/lit8 v0, v0, 0x1

    .line 989
    if-eqz v0, :cond_3

    .line 991
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": One side RTT is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return v3

    .line 993
    :cond_3
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    if-ne v0, v1, :cond_4

    .line 994
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->twoSided11McRttSupported:Z

    xor-int/lit8 v0, v0, 0x1

    .line 993
    if-eqz v0, :cond_4

    .line 995
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": two side RTT is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    return v3

    .line 997
    :cond_4
    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 998
    :cond_5
    const-string/jumbo v0, "RttManager"

    const-string/jumbo v1, "No BSSID in params"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    return v3

    .line 1000
    :cond_6
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    if-eqz v0, :cond_7

    .line 1001
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal number of burst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    return v3

    .line 1003
    :cond_7
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    if-lez v0, :cond_8

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_9

    .line 1004
    :cond_8
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal sample number per burst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1005
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 1004
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v3

    .line 1007
    :cond_9
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-ltz v0, :cond_a

    .line 1008
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    if-le v0, v4, :cond_b

    .line 1009
    :cond_a
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal measurement frame retry number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1010
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return v3

    .line 1012
    :cond_b
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-ltz v0, :cond_c

    .line 1013
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    if-le v0, v4, :cond_d

    .line 1014
    :cond_c
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal FTMR frame retry number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1015
    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 1014
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return v3

    .line 1017
    :cond_d
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lciSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 1018
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": LCI is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    return v3

    .line 1020
    :cond_e
    iget-boolean v0, p1, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget-boolean v0, v0, Landroid/net/wifi/RttManager$RttCapabilities;->lcrSupported:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 1021
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": LCR is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    return v3

    .line 1023
    :cond_f
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    if-lt v0, v2, :cond_10

    .line 1024
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_11

    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_11

    .line 1025
    :cond_10
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Illegal burst timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    return v3

    .line 1027
    :cond_11
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->preambleSupported:I

    and-int/2addr v0, v1

    if-nez v0, :cond_12

    .line 1028
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Do not support this preamble: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return v3

    .line 1030
    :cond_12
    iget v0, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;

    iget v1, v1, Landroid/net/wifi/RttManager$RttCapabilities;->bwSupported:I

    and-int/2addr v0, v1

    if-nez v0, :cond_13

    .line 1031
    const-string/jumbo v0, "RttManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Do not support this bandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return v3

    .line 1035
    :cond_13
    return v2
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1293
    const-string/jumbo v1, "No permission to access and change wifi or a bad initialization"

    .line 1292
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :cond_0
    return-void
.end method


# virtual methods
.method public disableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    .prologue
    const/4 v3, 0x0

    .line 1118
    if-nez p1, :cond_0

    .line 1119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1121
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 1122
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    move-result v0

    .line 1123
    .local v0, "key":I
    if-nez v0, :cond_1

    .line 1124
    const-string/jumbo v1, "RttManager"

    const-string/jumbo v2, "responder not enabled yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void

    .line 1127
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27206

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1128
    return-void
.end method

.method public enableResponder(Landroid/net/wifi/RttManager$ResponderCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/net/wifi/RttManager$ResponderCallback;

    .prologue
    .line 1098
    if-nez p1, :cond_0

    .line 1099
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1101
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 1102
    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->putListenerIfAbsent(Ljava/lang/Object;)I

    move-result v0

    .line 1103
    .local v0, "key":I
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x27205

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1104
    return-void
.end method

.method public getCapabilities()Landroid/net/wifi/RttManager$Capabilities;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Landroid/net/wifi/RttManager$Capabilities;

    invoke-direct {v0, p0}, Landroid/net/wifi/RttManager$Capabilities;-><init>(Landroid/net/wifi/RttManager;)V

    return-object v0
.end method

.method public getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;
    .locals 3

    .prologue
    .line 319
    iget-object v2, p0, Landroid/net/wifi/RttManager;->mCapabilitiesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 322
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mService:Landroid/net/wifi/IRttManager;

    invoke-interface {v1}, Landroid/net/wifi/IRttManager;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/RttManager;->mRttCapabilities:Landroid/net/wifi/RttManager$RttCapabilities;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 7
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    const/4 v4, 0x0

    .line 1048
    const/4 v0, 0x0

    .line 1049
    .local v0, "index":I
    array-length v5, p1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, p1, v3

    .line 1050
    .local v2, "rttParam":Landroid/net/wifi/RttManager$RttParams;
    invoke-direct {p0, v2, v0}, Landroid/net/wifi/RttManager;->rttParamSanity(Landroid/net/wifi/RttManager$RttParams;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1051
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "RTT Request Parameter Illegal"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1053
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1049
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1055
    .end local v2    # "rttParam":Landroid/net/wifi/RttManager$RttParams;
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 1056
    new-instance v1, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 1057
    .local v1, "parcelableParams":Landroid/net/wifi/RttManager$ParcelableRttParams;
    const-string/jumbo v3, "RttManager"

    const-string/jumbo v5, "Send RTT request to RTT Service"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v3, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 1059
    invoke-direct {p0, p2}, Landroid/net/wifi/RttManager;->putListener(Ljava/lang/Object;)I

    move-result v5

    .line 1058
    const v6, 0x27200

    invoke-virtual {v3, v6, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 1060
    return-void
.end method

.method public stopRanging(Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    .line 1064
    invoke-direct {p0}, Landroid/net/wifi/RttManager;->validateChannel()V

    .line 1065
    iget-object v0, p0, Landroid/net/wifi/RttManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0, p1}, Landroid/net/wifi/RttManager;->removeListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x27201

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1066
    return-void
.end method
