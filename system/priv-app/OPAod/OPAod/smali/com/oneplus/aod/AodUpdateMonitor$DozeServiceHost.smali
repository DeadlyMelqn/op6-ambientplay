.class final Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Lcom/oneplus/doze/DozeHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DozeServiceHost"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;
    }
.end annotation


# static fields
.field private static final PROCESSING_TIME:J = 0x1f4L


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/doze/DozeHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

.field private mNotificationLightOn:Z

.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method static synthetic -wrap0(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;
    .param p1, "ready"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStartDozing(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->handleStopDozing()V

    return-void
.end method

.method private constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    .line 254
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p2, "-this1"    # Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    return-void
.end method

.method private handlePulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get12(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/doze/DozeScrimController;

    move-result-object v0

    new-instance v1, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$1;-><init>(Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;Lcom/oneplus/doze/DozeHost$PulseCallback;)V

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/doze/DozeScrimController;->pulse(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V

    .line 438
    return-void
.end method

.method private handleStartDozing(Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "ready"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 386
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get15(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get24(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap0(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v10}, Lcom/oneplus/aod/AodUpdateMonitor;->-set6(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 389
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v8

    .line 390
    .local v8, "uiOPtion":I
    or-int/lit16 v8, v8, 0xa02

    .line 393
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v9}, Lcom/oneplus/aod/AodUpdateMonitor;->-set3(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 396
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 397
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap6(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 399
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get0(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get21(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 404
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get23(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/VolumneController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/VolumneController;->getCurrentMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-set9(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 405
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {}, Lcom/oneplus/aod/Utils;->isNotificationWakeUpEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-set7(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 406
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v1, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_DOZING:I

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap2(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    .line 407
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get4(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get4(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 409
    .local v6, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v6, :cond_0

    .line 410
    invoke-virtual {v6}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStartDozing()V

    .line 407
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 413
    .end local v6    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get18(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get8(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v9

    :goto_1
    invoke-static {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-set4(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 416
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v7    # "i":I
    .end local v8    # "uiOPtion":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 418
    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v10}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap1(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    .line 421
    :cond_3
    return-void

    .restart local v3    # "intentFilter":Landroid/content/IntentFilter;
    .restart local v7    # "i":I
    .restart local v8    # "uiOPtion":I
    :cond_4
    move v0, v10

    .line 413
    goto :goto_1
.end method

.method private handleStopDozing()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 441
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get15(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->-set3(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 443
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->-set1(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 445
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->-set8(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 446
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get19(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->stopListening()V

    .line 449
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get1(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 450
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get2(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get1(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 451
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v5}, Lcom/oneplus/aod/AodUpdateMonitor;->-set0(Lcom/oneplus/aod/AodUpdateMonitor;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 455
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get4(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 456
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get4(Lcom/oneplus/aod/AodUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodUpdateMonitorCallback;

    .line 457
    .local v0, "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitorCallback;->onStopDozing()V

    .line 455
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "cb":Lcom/oneplus/aod/AodUpdateMonitorCallback;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap6(Lcom/oneplus/aod/AodUpdateMonitor;)V

    .line 462
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/oneplus/doze/DozeLog;->traceDozing(Landroid/content/Context;Z)V

    .line 463
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get7(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get21(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    sget v3, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_IDLE:I

    invoke-static {v2, v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap2(Lcom/oneplus/aod/AodUpdateMonitor;I)V

    .line 465
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->-set5(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 466
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get17(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 467
    invoke-direct {p0}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->removeWindow()V

    .line 470
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private removeWindow()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get17(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v0

    .line 480
    .local v0, "uiOPtion":I
    and-int/lit16 v0, v0, -0xe07

    .line 485
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    .line 488
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get24(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 489
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-set6(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 490
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public fireAlwaysDisplay()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 279
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get16(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v2

    sget v3, Lcom/oneplus/aod/AodUpdateMonitor;->STATE_PULSING:I

    if-ne v2, v3, :cond_1

    .line 280
    :cond_0
    return-void

    .line 282
    :cond_1
    const-string/jumbo v2, "AodUpdateMonitor"

    const-string/jumbo v3, "fireAlwaysDisplay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2, v4}, Lcom/oneplus/aod/AodUpdateMonitor;->-set1(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 284
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get11(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 285
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 286
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$Callback;->onAlwaysDisplayOn()V

    goto :goto_0

    .line 288
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_2
    return-void
.end method

.method public fireDetectLight()V
    .locals 3

    .prologue
    .line 313
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 314
    return-void

    .line 317
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 318
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$Callback;->onTriggerDetectLight()V

    goto :goto_0

    .line 320
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_1
    return-void
.end method

.method public fireNewNotifications()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    return-void

    .line 296
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 297
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$Callback;->onNewNotifications()V

    goto :goto_0

    .line 299
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_1
    return-void
.end method

.method public firePowerSaveChanged(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 273
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 274
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onPowerSaveChanged(Z)V

    goto :goto_0

    .line 276
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_0
    return-void
.end method

.method public fireThreeKeyStateChanged()V
    .locals 3

    .prologue
    .line 303
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    return-void

    .line 307
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 308
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0}, Lcom/oneplus/doze/DozeHost$Callback;->onThreeKeyChanged()V

    goto :goto_0

    .line 310
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_1
    return-void
.end method

.method public isNotificationLightOn()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mNotificationLightOn:Z

    return v0
.end method

.method public isPowerSaveActive()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get6(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get6(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/battery/BatteryControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/battery/BatteryControllerImpl;->isPowerSave()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPulsingBlocked()Z
    .locals 1

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onEnterDisplayPeriod(Z)V
    .locals 3
    .param p1, "enter"    # Z

    .prologue
    .line 323
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-get14(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/doze/DozeHost$Callback;

    .line 328
    .local v0, "callback":Lcom/oneplus/doze/DozeHost$Callback;
    invoke-interface {v0, p1}, Lcom/oneplus/doze/DozeHost$Callback;->onEnterDisplayPeriod(Z)V

    goto :goto_0

    .line 330
    .end local v0    # "callback":Lcom/oneplus/doze/DozeHost$Callback;
    :cond_1
    return-void
.end method

.method public onWakingUp(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string/jumbo v0, "AodUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWakingUp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get11(Lcom/oneplus/aod/AodUpdateMonitor;)Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 363
    const-string/jumbo v0, "com.android.systemui:UnlockStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get5(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-set5(Lcom/oneplus/aod/AodUpdateMonitor;Z)Z

    .line 367
    return-void
.end method

.method public pulseWhileDozing(Lcom/oneplus/doze/DozeHost$PulseCallback;I)V
    .locals 3
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$PulseCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 350
    return-void
.end method

.method public removeCallback(Lcom/oneplus/doze/DozeHost$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/oneplus/doze/DozeHost$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public startDozing(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "ready"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 344
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    return-void
.end method

.method public stopDozing()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mHandler:Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PSB.DozeServiceHost[mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$DozeServiceHost;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
