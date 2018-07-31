.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final DO_ADD_HDMI_INPUT:I = 0x6

.field private static final DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final DO_REMOVE_HDMI_INPUT:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    .prologue
    .line 1957
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;
    .param p2, "-this1"    # Landroid/media/tv/TvInputService$ServiceHandler;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 1967
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1968
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1970
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1971
    :catch_0
    move-exception v0

    .line 1972
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1975
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1976
    return-void
.end method

.method private broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 1979
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1980
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1982
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1980
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1983
    :catch_0
    move-exception v0

    .line 1984
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1987
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1988
    return-void
.end method

.method private broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 1991
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1992
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1994
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1992
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1999
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2000
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2004
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 2135
    const-string/jumbo v19, "TvInputService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unhandled message code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    return-void

    .line 2006
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2007
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/InputChannel;

    .line 2008
    .local v5, "channel":Landroid/view/InputChannel;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2009
    .local v4, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 2010
    .local v11, "inputId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v16

    .line 2012
    .local v16, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v16, :cond_0

    .line 2015
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2019
    :goto_0
    return-void

    .line 2016
    :catch_0
    move-exception v7

    .line 2017
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2021
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    .line 2023
    .local v18, "stub":Landroid/media/tv/ITvInputSession;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/tv/TvInputService$HardwareSession;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v14, v16

    .line 2025
    check-cast v14, Landroid/media/tv/TvInputService$HardwareSession;

    .line 2026
    .local v14, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v14}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v9

    .line 2027
    .local v9, "hardwareInputId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/media/tv/TvInputService;->-wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    .line 2027
    if-eqz v19, :cond_3

    .line 2029
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 2030
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "Hardware input id is not setup yet."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 2036
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2040
    :goto_2
    return-void

    .line 2032
    :cond_2
    const-string/jumbo v19, "TvInputService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Invalid hardware input id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2037
    :catch_1
    move-exception v7

    .line 2038
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2042
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set1(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    .line 2043
    invoke-static {v14, v4}, Landroid/media/tv/TvInputService$HardwareSession;->-set2(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set3(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2045
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    .line 2046
    const-string/jumbo v20, "tv_input"

    .line 2045
    invoke-virtual/range {v19 .. v20}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/tv/TvInputManager;

    .line 2048
    .local v13, "manager":Landroid/media/tv/TvInputManager;
    invoke-static {v14}, Landroid/media/tv/TvInputService$HardwareSession;->-get1(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v20

    .line 2047
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v9, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2058
    .end local v9    # "hardwareInputId":Ljava/lang/String;
    .end local v13    # "manager":Landroid/media/tv/TvInputManager;
    .end local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :goto_3
    return-void

    .line 2050
    :cond_4
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v17

    .line 2051
    .local v17, "someArgs":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2052
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2053
    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2054
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 2061
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v11    # "inputId":Ljava/lang/String;
    .end local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v17    # "someArgs":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2062
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/tv/TvInputService$Session;

    .line 2063
    .restart local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/media/tv/ITvInputSession;

    .line 2064
    .restart local v18    # "stub":Landroid/media/tv/ITvInputSession;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2065
    .restart local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v10, Landroid/os/IBinder;

    .line 2067
    .local v10, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, v18

    invoke-interface {v4, v0, v10}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2071
    :goto_4
    if-eqz v16, :cond_5

    .line 2072
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/tv/TvInputService$Session;->-wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2074
    :cond_5
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2075
    return-void

    .line 2068
    :catch_2
    move-exception v7

    .line 2069
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2078
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "hardwareSessionToken":Landroid/os/IBinder;
    .end local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    .line 2079
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    .line 2080
    .restart local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 2081
    .restart local v11    # "inputId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v15

    .line 2083
    .local v15, "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    if-nez v15, :cond_6

    .line 2086
    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2090
    :goto_5
    return-void

    .line 2087
    :catch_3
    move-exception v7

    .line 2088
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2092
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_6
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    .line 2095
    .restart local v18    # "stub":Landroid/media/tv/ITvInputSession;
    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 2099
    :goto_6
    invoke-static {v15, v4}, Landroid/media/tv/TvInputService$RecordingSession;->-wrap0(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2100
    return-void

    .line 2096
    :catch_4
    move-exception v7

    .line 2097
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 2103
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v11    # "inputId":Ljava/lang/String;
    .end local v15    # "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    .line 2104
    .local v8, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v12

    .line 2105
    .local v12, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v12, :cond_7

    .line 2106
    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2108
    :cond_7
    return-void

    .line 2111
    .end local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    .line 2112
    .restart local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v11

    .line 2113
    .restart local v11    # "inputId":Ljava/lang/String;
    if-eqz v11, :cond_8

    .line 2114
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2116
    :cond_8
    return-void

    .line 2119
    .end local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v11    # "inputId":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2120
    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v12

    .line 2121
    .restart local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v12, :cond_9

    .line 2122
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2124
    :cond_9
    return-void

    .line 2127
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2128
    .restart local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v11

    .line 2129
    .restart local v11    # "inputId":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 2130
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 2132
    :cond_a
    return-void

    .line 2004
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
