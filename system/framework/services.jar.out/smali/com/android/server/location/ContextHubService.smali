.class public Lcom/android/server/location/ContextHubService;
.super Landroid/hardware/location/IContextHubService$Stub;
.source "ContextHubService.java"


# static fields
.field public static final ANY_HUB:I = -0x1

.field private static final ENFORCE_HW_PERMISSION_MESSAGE:Ljava/lang/String; = "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

.field private static final HARDWARE_PERMISSION:Ljava/lang/String; = "android.permission.LOCATION_HARDWARE"

.field private static final HEADER_FIELD_APP_INSTANCE:I = 0x3

.field private static final HEADER_FIELD_HUB_HANDLE:I = 0x2

.field private static final HEADER_FIELD_LOAD_APP_ID_HI:I = 0x5

.field private static final HEADER_FIELD_LOAD_APP_ID_LO:I = 0x4

.field private static final HEADER_FIELD_MSG_TYPE:I = 0x0

.field private static final HEADER_FIELD_MSG_VERSION:I = 0x1

.field private static final MSG_HEADER_SIZE:I = 0x4

.field private static final MSG_LOAD_APP_HEADER_SIZE:I = 0x6

.field public static final MSG_LOAD_NANO_APP:I = 0x3

.field public static final MSG_UNLOAD_NANO_APP:I = 0x4

.field private static final OS_APP_INSTANCE:I = -0x1

.field private static final PRE_LOADED_APP_MEM_REQ:I = 0x0

.field private static final PRE_LOADED_APP_NAME:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_APP_PUBLISHER:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final PRE_LOADED_GENERIC_UNKNOWN:Ljava/lang/String; = "Preloaded app, unknown"

.field private static final TAG:Ljava/lang/String; = "ContextHubService"


# instance fields
.field private final mCallbacksList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/hardware/location/IContextHubCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

.field private final mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/NanoAppInstanceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/hardware/location/IContextHubService$Stub;-><init>()V

    .line 76
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    .line 85
    iput-object p1, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    .line 86
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->nativeInitialize()[Landroid/hardware/location/ContextHubInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    const-string/jumbo v1, "ContextHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ContextHub["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    const-string/jumbo v3, ", name:  "

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-void
.end method

.method private addAppInstance(IIJI)I
    .locals 7
    .param p1, "hubHandle"    # I
    .param p2, "appInstanceHandle"    # I
    .param p3, "appId"    # J
    .param p5, "appVersion"    # I

    .prologue
    const/4 v5, 0x0

    .line 306
    new-instance v1, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-direct {v1}, Landroid/hardware/location/NanoAppInstanceInfo;-><init>()V

    .line 308
    .local v1, "appInfo":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v1, p3, p4}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppId(J)V

    .line 309
    invoke-virtual {v1, p5}, Landroid/hardware/location/NanoAppInstanceInfo;->setAppVersion(I)V

    .line 310
    const-string/jumbo v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setName(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v1, p1}, Landroid/hardware/location/NanoAppInstanceInfo;->setContexthubId(I)V

    .line 312
    invoke-virtual {v1, p2}, Landroid/hardware/location/NanoAppInstanceInfo;->setHandle(I)V

    .line 313
    const-string/jumbo v2, "Preloaded app, unknown"

    invoke-virtual {v1, v2}, Landroid/hardware/location/NanoAppInstanceInfo;->setPublisher(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededExecMemBytes(I)V

    .line 315
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededReadMemBytes(I)V

    .line 316
    invoke-virtual {v1, v5}, Landroid/hardware/location/NanoAppInstanceInfo;->setNeededWriteMemBytes(I)V

    .line 319
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const-string/jumbo v0, "Updated"

    .line 325
    .local v0, "action":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string/jumbo v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " app instance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 327
    const-string/jumbo v4, " version "

    .line 326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v5

    .line 322
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "Added"

    .restart local v0    # "action":Ljava/lang/String;
    goto :goto_0
.end method

.method private checkPermissions()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.LOCATION_HARDWARE"

    const-string/jumbo v2, "Permission \'android.permission.LOCATION_HARDWARE\' not granted to access ContextHub Hardware"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private deleteAppInstance(I)I
    .locals 2
    .param p1, "appInstanceHandle"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 334
    const/4 v0, -0x1

    return v0

    .line 337
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private native nativeInitialize()[Landroid/hardware/location/ContextHubInfo;
.end method

.method private native nativeSendMessage([I[B)I
.end method

.method private onMessageReceipt([I[B)I
    .locals 12
    .param p1, "header"    # [I
    .param p2, "data"    # [B

    .prologue
    .line 272
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 273
    :cond_0
    const/4 v9, -0x1

    return v9

    .line 272
    :cond_1
    array-length v9, p1

    const/4 v10, 0x4

    if-lt v9, v10, :cond_0

    .line 276
    iget-object v9, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 277
    .local v2, "callbacksCount":I
    const/4 v9, 0x0

    aget v7, p1, v9

    .line 278
    .local v7, "msgType":I
    const/4 v9, 0x1

    aget v8, p1, v9

    .line 279
    .local v8, "msgVersion":I
    const/4 v9, 0x2

    aget v4, p1, v9

    .line 280
    .local v4, "hubHandle":I
    const/4 v9, 0x3

    aget v0, p1, v9

    .line 282
    .local v0, "appInstance":I
    const-string/jumbo v9, "ContextHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Sending message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from hubHandle "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    const-string/jumbo v11, ", appInstance "

    .line 282
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 283
    const-string/jumbo v11, ", callBackCount "

    .line 282
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v9, 0x1

    if-ge v2, v9, :cond_2

    .line 286
    const-string/jumbo v9, "ContextHubService"

    const-string/jumbo v10, "No message callbacks registered."

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v9, 0x0

    return v9

    .line 290
    :cond_2
    new-instance v6, Landroid/hardware/location/ContextHubMessage;

    invoke-direct {v6, v7, v8, p2}, Landroid/hardware/location/ContextHubMessage;-><init>(II[B)V

    .line 291
    .local v6, "msg":Landroid/hardware/location/ContextHubMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 292
    iget-object v9, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/IContextHubCallback;

    .line 294
    .local v1, "callback":Landroid/hardware/location/IContextHubCallback;
    :try_start_0
    invoke-interface {v1, v4, v0, v6}, Landroid/hardware/location/IContextHubCallback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "ContextHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ") calling remote callback ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 300
    .end local v1    # "callback":Landroid/hardware/location/IContextHubCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v9, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v9}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 301
    const/4 v9, 0x0

    return v9
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 247
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ContextHubService"

    invoke-static {v3, v4, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 249
    :cond_0
    const-string/jumbo v3, "Dumping ContextHub Service"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    const-string/jumbo v3, "=================== CONTEXT HUBS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_1
    const-string/jumbo v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    const-string/jumbo v3, "=================== NANOAPPS ===================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 261
    .local v1, "nanoAppInstance":Ljava/lang/Integer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoAppInstanceInfo;

    invoke-virtual {v3}, Landroid/hardware/location/NanoAppInstanceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v1    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 9
    .param p1, "hubHandle"    # I
    .param p2, "filter"    # Landroid/hardware/location/NanoAppFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "foundInstances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "nanoAppInstance$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 210
    .local v3, "nanoAppInstance":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 212
    .local v2, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {p2, v2}, Landroid/hardware/location/NanoAppFilter;->testMatch(Landroid/hardware/location/NanoAppInstanceInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 213
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    .end local v2    # "info":Landroid/hardware/location/NanoAppInstanceInfo;
    .end local v3    # "nanoAppInstance":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [I

    .line 218
    .local v5, "retArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v5, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_2
    const-string/jumbo v6, "ContextHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " apps on hub handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v5
.end method

.method public getContextHubHandles()[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 106
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v2, v2

    new-array v1, v2, [I

    .line 108
    .local v1, "returnArray":[I
    const-string/jumbo v2, "ContextHubService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "System supports "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " hubs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 110
    aput v0, v1, v0

    .line 111
    const-string/jumbo v2, "ContextHubService"

    const-string/jumbo v3, "Hub %s is mapped to %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 112
    iget-object v5, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/hardware/location/ContextHubInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aget v5, v1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 111
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method

.method public getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 3
    .param p1, "contextHubHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 121
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 122
    :cond_0
    const-string/jumbo v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid context hub handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 3
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 196
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    return-object v0

    .line 199
    :cond_0
    const-string/jumbo v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find nanoApp with handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 10
    .param p1, "contextHubHandle"    # I
    .param p2, "app"    # Landroid/hardware/location/NanoApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 131
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 133
    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/location/ContextHubService;->mContextHubInfo:[Landroid/hardware/location/ContextHubInfo;

    array-length v4, v4

    if-lt p1, v4, :cond_1

    .line 134
    :cond_0
    const-string/jumbo v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid contextHubhandle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v7

    .line 137
    :cond_1
    if-nez p2, :cond_2

    .line 138
    const-string/jumbo v4, "ContextHubService"

    const-string/jumbo v5, "Invalid null app"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v7

    .line 142
    :cond_2
    const/4 v4, 0x6

    new-array v3, v4, [I

    .line 143
    .local v3, "msgHeader":[I
    const/4 v4, 0x2

    aput p1, v3, v4

    .line 144
    aput v7, v3, v5

    .line 145
    const/4 v4, 0x1

    aput v6, v3, v4

    .line 146
    aput v5, v3, v6

    .line 148
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppId()J

    move-result-wide v0

    .line 150
    .local v0, "appId":J
    and-long v4, v0, v8

    long-to-int v4, v4

    const/4 v5, 0x4

    aput v4, v3, v5

    .line 151
    const/16 v4, 0x20

    shr-long v4, v0, v4

    and-long/2addr v4, v8

    long-to-int v4, v4

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 153
    invoke-virtual {p2}, Landroid/hardware/location/NanoApp;->getAppBinary()[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v2

    .line 154
    .local v2, "errVal":I
    if-eqz v2, :cond_3

    .line 155
    const-string/jumbo v4, "ContextHubService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Send Message returns error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v7

    .line 160
    :cond_3
    return v6
.end method

.method public registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    .locals 3
    .param p1, "callback"    # Landroid/hardware/location/IContextHubCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 97
    iget-object v0, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 98
    const-string/jumbo v0, "ContextHubService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Added callback, total callbacks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/android/server/location/ContextHubService;->mCallbacksList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 3
    .param p1, "hubHandle"    # I
    .param p2, "nanoAppHandle"    # I
    .param p3, "msg"    # Landroid/hardware/location/ContextHubMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 231
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 232
    :cond_0
    const-string/jumbo v1, "ContextHubService"

    const-string/jumbo v2, "null ptr"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v1, -0x1

    return v1

    .line 236
    :cond_1
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 237
    .local v0, "msgHeader":[I
    const/4 v1, 0x2

    aput p1, v0, v1

    .line 238
    const/4 v1, 0x3

    aput p2, v0, v1

    .line 239
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 240
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getMsgType()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 242
    invoke-virtual {p3}, Landroid/hardware/location/ContextHubMessage;->getData()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v1

    return v1
.end method

.method public unloadNanoApp(I)I
    .locals 8
    .param p1, "nanoAppInstanceHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 165
    invoke-direct {p0}, Lcom/android/server/location/ContextHubService;->checkPermissions()V

    .line 166
    iget-object v3, p0, Lcom/android/server/location/ContextHubService;->mNanoAppHash:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 167
    .local v0, "info":Landroid/hardware/location/NanoAppInstanceInfo;
    if-nez v0, :cond_0

    .line 168
    const-string/jumbo v3, "ContextHubService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find app with handle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v6

    .line 173
    :cond_0
    new-array v2, v7, [I

    .line 174
    .local v2, "msgHeader":[I
    const/4 v3, 0x2

    aput v6, v2, v3

    .line 175
    const/4 v3, 0x3

    aput p1, v2, v3

    .line 176
    const/4 v3, 0x1

    aput v5, v2, v3

    .line 177
    aput v7, v2, v5

    .line 179
    new-array v1, v5, [B

    .line 181
    .local v1, "msg":[B
    invoke-direct {p0, v2, v1}, Lcom/android/server/location/ContextHubService;->nativeSendMessage([I[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    const-string/jumbo v3, "ContextHubService"

    const-string/jumbo v4, "native send message fails"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return v6

    .line 187
    :cond_1
    return v5
.end method
