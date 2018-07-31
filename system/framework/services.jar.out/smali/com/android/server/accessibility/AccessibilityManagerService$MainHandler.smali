.class final Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# static fields
.field public static final MSG_ANNOUNCE_NEW_USER_IF_NEEDED:I = 0x5

.field public static final MSG_CLEAR_ACCESSIBILITY_FOCUS:I = 0x9

.field public static final MSG_INIT_SERVICE:I = 0xf

.field public static final MSG_SEND_ACCESSIBILITY_BUTTON_TO_INPUT_FILTER:I = 0xd

.field public static final MSG_SEND_ACCESSIBILITY_EVENT_TO_INPUT_FILTER:I = 0x1

.field public static final MSG_SEND_CLEARED_STATE_TO_CLIENTS_FOR_USER:I = 0x3

.field public static final MSG_SEND_KEY_EVENT_TO_INPUT_FILTER:I = 0x8

.field public static final MSG_SEND_RELEVANT_EVENTS_CHANGED_TO_CLIENTS:I = 0xc

.field public static final MSG_SEND_SERVICES_STATE_CHANGED_TO_CLIENTS:I = 0xa

.field public static final MSG_SEND_STATE_TO_CLIENTS:I = 0x2

.field public static final MSG_SHOW_ACCESSIBILITY_BUTTON_CHOOSER:I = 0xe

.field public static final MSG_SHOW_ENABLED_TOUCH_EXPLORATION_DIALOG:I = 0x7

.field public static final MSG_UPDATE_FINGERPRINT:I = 0xb

.field public static final MSG_UPDATE_INPUT_FILTER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2403
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2404
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2405
    return-void
.end method

.method private announceNewUserIfNeeded()V
    .locals 9

    .prologue
    .line 2509
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2510
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap12(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 2511
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->isHandlingAccessibilityEvents()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2512
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    .line 2513
    const-string/jumbo v6, "user"

    .line 2512
    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 2514
    .local v2, "userManager":Landroid/os/UserManager;
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2515
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 2514
    const v7, 0x1040654

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2517
    .local v1, "message":Ljava/lang/String;
    const/16 v4, 0x4000

    .line 2516
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2518
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2519
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get2(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v6

    invoke-virtual {v4, v0, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "userManager":Landroid/os/UserManager;
    :cond_0
    monitor-exit v5

    .line 2522
    return-void

    .line 2509
    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private getUserClientsForId(I)Landroid/os/RemoteCallbackList;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2526
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v2

    .line 2529
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUserClients:Landroid/os/RemoteCallbackList;

    return-object v1

    .line 2526
    .end local v0    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static synthetic lambda$-com_android_server_accessibility_AccessibilityManagerService$MainHandler_111597(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 1
    .param p0, "relevantEventTypes"    # I
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;

    .prologue
    .line 2482
    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setRelevantEventTypes(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 2483
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method static synthetic lambda$-com_android_server_accessibility_AccessibilityManagerService$MainHandler_113846(ILandroid/view/accessibility/IAccessibilityManagerClient;)V
    .locals 1
    .param p0, "clientState"    # I
    .param p1, "client"    # Landroid/view/accessibility/IAccessibilityManagerClient;

    .prologue
    .line 2536
    :try_start_0
    invoke-interface {p1, p0}, Landroid/view/accessibility/IAccessibilityManagerClient;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 2537
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2546
    .local p1, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 2547
    .local v3, "userClientCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2548
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    .local v0, "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    :try_start_1
    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManagerClient;->notifyServicesStateChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2551
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    goto :goto_1

    .line 2556
    .end local v0    # "client":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2558
    return-void

    .line 2555
    .end local v1    # "i":I
    .end local v3    # "userClientCount":I
    :catchall_0
    move-exception v4

    .line 2556
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2555
    throw v4
.end method

.method private sendStateToClients(ILandroid/os/RemoteCallbackList;)V
    .locals 2
    .param p1, "clientState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/accessibility/IAccessibilityManagerClient;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2534
    .local p2, "clients":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/view/accessibility/IAccessibilityManagerClient;>;"
    new-instance v0, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;-><init>(BI)V

    invoke-virtual {p2, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 2541
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    .line 2409
    iget v6, p1, Landroid/os/Message;->what:I

    .line 2410
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    .line 2506
    :goto_0
    :pswitch_0
    return-void

    .line 2412
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/accessibility/AccessibilityEvent;

    .line 2413
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2414
    :try_start_0
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 2415
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v11

    .line 2418
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 2413
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2422
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    .line 2423
    .local v1, "event":Landroid/view/KeyEvent;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 2424
    .local v3, "policyFlags":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2425
    :try_start_1
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2426
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10, v1, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->sendInputEvent(Landroid/view/InputEvent;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v11

    .line 2429
    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    goto :goto_0

    .line 2424
    :catchall_1
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2433
    .end local v1    # "event":Landroid/view/KeyEvent;
    .end local v3    # "policyFlags":I
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2434
    .local v0, "clientState":I
    iget v7, p1, Landroid/os/Message;->arg2:I

    .line 2435
    .local v7, "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get4(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 2436
    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getUserClientsForId(I)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v0, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 2440
    .end local v0    # "clientState":I
    .end local v7    # "userId":I
    :pswitch_4
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2441
    .restart local v7    # "userId":I
    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getUserClientsForId(I)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v12, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 2445
    .end local v7    # "userId":I
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->announceNewUserIfNeeded()V

    goto :goto_0

    .line 2449
    :pswitch_6
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    .line 2450
    .local v8, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v8}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap34(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_0

    .line 2454
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2455
    .local v5, "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap27(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto/16 :goto_0

    .line 2459
    .end local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    :pswitch_8
    iget v9, p1, Landroid/os/Message;->arg1:I

    .line 2460
    .local v9, "windowId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap11(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/accessibility/AccessibilityManagerService$InteractionBridge;->clearAccessibilityFocusNotLocked(I)V

    goto/16 :goto_0

    .line 2464
    .end local v9    # "windowId":I
    :pswitch_9
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2465
    .restart local v7    # "userId":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get4(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V

    .line 2466
    invoke-direct {p0, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->getUserClientsForId(I)Landroid/os/RemoteCallbackList;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;)V

    goto/16 :goto_0

    .line 2470
    .end local v7    # "userId":I
    :pswitch_a
    iget-object v11, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    invoke-static {v11, v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap33(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_0

    .line 2474
    :pswitch_b
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 2475
    .restart local v7    # "userId":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 2477
    .local v4, "relevantEventTypes":I
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2478
    :try_start_2
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10, v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap13(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .restart local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    monitor-exit v11

    .line 2480
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v11, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;

    invoke-direct {v11, v12, v4}, Lcom/android/server/accessibility/-$Lambda$kXhldx_ZxidxR4suyNIbZ545MMw;-><init>(BI)V

    invoke-static {v10, v8, v11}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap17(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;Ljava/util/function/Consumer;)V

    goto/16 :goto_0

    .line 2477
    .end local v8    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_2
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2490
    .end local v4    # "relevantEventTypes":I
    .end local v7    # "userId":I
    :pswitch_c
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get9(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 2491
    :try_start_3
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get6(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 2492
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get7(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityInputFilter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/accessibility/AccessibilityInputFilter;->notifyAccessibilityButtonClicked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    monitor-exit v11

    goto/16 :goto_0

    .line 2490
    :catchall_3
    move-exception v10

    monitor-exit v11

    throw v10

    .line 2498
    :pswitch_d
    iget-object v10, p0, Lcom/android/server/accessibility/AccessibilityManagerService$MainHandler;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap26(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto/16 :goto_0

    .line 2502
    :pswitch_e
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    .line 2503
    .restart local v5    # "service":Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService$Service;->-wrap1(Lcom/android/server/accessibility/AccessibilityManagerService$Service;)V

    goto/16 :goto_0

    .line 2410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
