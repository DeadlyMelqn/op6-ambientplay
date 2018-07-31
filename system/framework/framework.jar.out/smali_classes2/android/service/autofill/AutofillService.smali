.class public abstract Landroid/service/autofill/AutofillService;
.super Landroid/app/Service;
.source "AutofillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/AutofillService$1;
    }
.end annotation


# static fields
.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_DISCONNECT:I = 0x2

.field private static final MSG_ON_FILL_REQUEST:I = 0x3

.field private static final MSG_ON_SAVE_REQUEST:I = 0x4

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.AutofillService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.autofill"

.field private static final TAG:Ljava/lang/String; = "AutofillService"


# instance fields
.field private final mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field private mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field private final mInterface:Landroid/service/autofill/IAutoFillService;


# direct methods
.method static synthetic -get0(Landroid/service/autofill/AutofillService;)Lcom/android/internal/os/HandlerCaller;
    .locals 1
    .param p0, "-this"    # Landroid/service/autofill/AutofillService;

    .prologue
    iget-object v0, p0, Landroid/service/autofill/AutofillService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 475
    new-instance v0, Landroid/service/autofill/AutofillService$1;

    invoke-direct {v0, p0}, Landroid/service/autofill/AutofillService$1;-><init>(Landroid/service/autofill/AutofillService;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    .line 505
    new-instance v0, Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;

    invoke-direct {v0, p0}, Landroid/service/autofill/-$Lambda$svbjmB3NFhHnuZrn67G14PFSJlY;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 444
    return-void
.end method


# virtual methods
.method public final getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v1}, Landroid/service/autofill/AutofillService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 634
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_0

    .line 635
    return-object v2

    .line 637
    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$-android_service_autofill_AutofillService_26559(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 506
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 531
    const-string/jumbo v8, "AutofillService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MyCallbacks received invalid message type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 508
    :pswitch_0
    invoke-virtual {p0}, Landroid/service/autofill/AutofillService;->onConnected()V

    goto :goto_0

    .line 511
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 512
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/service/autofill/FillRequest;

    .line 513
    .local v5, "request":Landroid/service/autofill/FillRequest;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/os/CancellationSignal;

    .line 514
    .local v3, "cancellation":Landroid/os/CancellationSignal;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Landroid/service/autofill/IFillCallback;

    .line 515
    .local v1, "callback":Landroid/service/autofill/IFillCallback;
    new-instance v4, Landroid/service/autofill/FillCallback;

    invoke-virtual {v5}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v8

    invoke-direct {v4, v1, v8}, Landroid/service/autofill/FillCallback;-><init>(Landroid/service/autofill/IFillCallback;I)V

    .line 516
    .local v4, "fillCallback":Landroid/service/autofill/FillCallback;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 517
    invoke-virtual {p0, v5, v3, v4}, Landroid/service/autofill/AutofillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V

    goto :goto_0

    .line 520
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "callback":Landroid/service/autofill/IFillCallback;
    .end local v3    # "cancellation":Landroid/os/CancellationSignal;
    .end local v4    # "fillCallback":Landroid/service/autofill/FillCallback;
    .end local v5    # "request":Landroid/service/autofill/FillRequest;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 521
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/service/autofill/SaveRequest;

    .line 522
    .local v6, "request":Landroid/service/autofill/SaveRequest;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/service/autofill/ISaveCallback;

    .line 523
    .local v2, "callback":Landroid/service/autofill/ISaveCallback;
    new-instance v7, Landroid/service/autofill/SaveCallback;

    invoke-direct {v7, v2}, Landroid/service/autofill/SaveCallback;-><init>(Landroid/service/autofill/ISaveCallback;)V

    .line 524
    .local v7, "saveCallback":Landroid/service/autofill/SaveCallback;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 525
    invoke-virtual {p0, v6, v7}, Landroid/service/autofill/AutofillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V

    goto :goto_0

    .line 528
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/service/autofill/ISaveCallback;
    .end local v6    # "request":Landroid/service/autofill/SaveRequest;
    .end local v7    # "saveCallback":Landroid/service/autofill/SaveCallback;
    :pswitch_3
    invoke-virtual {p0}, Landroid/service/autofill/AutofillService;->onDisconnected()V

    goto :goto_0

    .line 506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 547
    const-string/jumbo v0, "android.service.autofill.AutofillService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroid/service/autofill/AutofillService;->mInterface:Landroid/service/autofill/IAutoFillService;

    invoke-interface {v0}, Landroid/service/autofill/IAutoFillService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    .line 550
    :cond_0
    const-string/jumbo v0, "AutofillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to bind to wrong intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConnected()V
    .locals 0

    .prologue
    .line 560
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 542
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/AutofillService;->mHandlerCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/AutofillService;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 543
    return-void
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public abstract onFillRequest(Landroid/service/autofill/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/FillCallback;)V
.end method

.method public abstract onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/SaveCallback;)V
.end method
