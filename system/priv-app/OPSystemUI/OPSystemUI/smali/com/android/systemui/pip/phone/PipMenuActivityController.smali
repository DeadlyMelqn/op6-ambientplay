.class public Lcom/android/systemui/pip/phone/PipMenuActivityController;
.super Ljava/lang/Object;
.source "PipMenuActivityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipMenuActivityController$1;,
        Lcom/android/systemui/pip/phone/PipMenuActivityController$2;,
        Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAppActions:Landroid/content/pm/ParceledListSlice;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

.field private mMediaActions:Landroid/content/pm/ParceledListSlice;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuState:I

.field private mMessenger:Landroid/os/Messenger;

.field private mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field private mStartActivityRequested:Z

.field private mStartActivityRequestedTime:J

.field private mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

.field private mTmpDismissFractionData:Landroid/os/Bundle;

.field private mToActivityMessenger:Landroid/os/Messenger;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/pip/phone/InputConsumerController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipMenuActivityController;)Landroid/os/Messenger;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/pip/phone/PipMenuActivityController;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "-value"    # Landroid/os/Messenger;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipMenuActivityController;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/pip/phone/PipMenuActivityController;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p1, "requested"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/pip/phone/InputConsumerController;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "mediaController"    # Lcom/android/systemui/pip/phone/PipMediaController;
    .param p4, "inputConsumerController"    # Lcom/android/systemui/pip/phone/InputConsumerController;

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    .line 136
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$1;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    .line 187
    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    .line 196
    new-instance v0, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController$2;-><init>(Lcom/android/systemui/pip/phone/PipMenuActivityController;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    .line 206
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    .line 208
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    .line 209
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    .line 211
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    .line 212
    return-void
.end method

.method private isStartActivityRequestedElapsed()Z
    .locals 4

    .prologue
    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    sub-long/2addr v0, v2

    .line 458
    const-wide/16 v2, 0x12c

    .line 457
    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidActions(Landroid/content/pm/ParceledListSlice;)Z
    .locals 2
    .param p1, "actions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    const/4 v0, 0x0

    .line 450
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController_18260(IZLcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 0
    .param p0, "menuState"    # I
    .param p1, "resize"    # Z
    .param p2, "l"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .prologue
    .line 475
    invoke-interface {p2, p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;->onPipMenuStateChanged(IZ)V

    return-void
.end method

.method private onMenuStateChanged(IZ)V
    .locals 2
    .param p1, "menuState"    # I
    .param p2, "resize"    # Z

    .prologue
    .line 469
    if-nez p1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    .line 474
    :goto_0
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-eq p1, v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$1;

    invoke-direct {v1, p2, p1}, Lcom/android/systemui/pip/phone/-$Lambda$ZB0vTH4BRyAQB1FhTXfcOlTpmPY$1;-><init>(ZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 476
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->addListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    .line 486
    :cond_0
    :goto_1
    iput p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    .line 487
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->unregisterInputConsumer()V

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActionListener:Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMediaController;->removeListener(Lcom/android/systemui/pip/phone/PipMediaController$ActionListener;)V

    goto :goto_1
.end method

.method private resolveMenuActions()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isValidActions(Landroid/content/pm/ParceledListSlice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    return-object v0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMediaActions:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method private setStartActivityRequested(Z)V
    .locals 2
    .param p1, "requested"    # Z

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 491
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    .line 492
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    .line 493
    return-void

    .line 492
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 8
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "willResizeMenu"    # Z

    .prologue
    const/4 v7, 0x0

    .line 386
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 387
    .local v3, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v4, :cond_2

    .line 388
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v4, v4

    if-lez v4, :cond_2

    .line 389
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 390
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "messenger"

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 391
    const-string/jumbo v4, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 392
    if-eqz p2, :cond_0

    .line 393
    const-string/jumbo v4, "stack_bounds"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 395
    :cond_0
    if-eqz p3, :cond_1

    .line 396
    const-string/jumbo v4, "movement_bounds"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    :cond_1
    const-string/jumbo v4, "menu_state"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string/jumbo v4, "allow_timeout"

    invoke-virtual {v1, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string/jumbo v4, "resize_menu_on_show"

    invoke-virtual {v1, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 403
    .local v2, "options":Landroid/app/ActivityOptions;
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    .line 402
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 404
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 405
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 406
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 414
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "options":Landroid/app/ActivityOptions;
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_0
    return-void

    .line 408
    .restart local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_2
    const-string/jumbo v4, "PipMenuActController"

    const-string/jumbo v5, "No PIP tasks found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v7}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 412
    const-string/jumbo v4, "PipMenuActController"

    const-string/jumbo v5, "Error showing PIP menu activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateMenuActions()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 420
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v5, :cond_1

    .line 422
    const/4 v4, 0x0

    .line 424
    .local v4, "stackBounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    .line 425
    .local v3, "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v3, :cond_0

    .line 426
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v3    # "pinnedStackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v5, "stack_bounds"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 434
    const-string/jumbo v5, "actions"

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->resolveMenuActions()Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 436
    .local v2, "m":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 437
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 439
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v5, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 428
    .restart local v4    # "stackBounds":Landroid/graphics/Rect;
    :catch_0
    move-exception v1

    .line 429
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PipMenuActController"

    const-string/jumbo v6, "Error showing PIP menu activity"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 440
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "m":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 441
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "PipMenuActController"

    const-string/jumbo v6, "Could not notify menu activity to update actions"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipMenuActController"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mToActivityMessenger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mListeners="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStartActivityRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStartActivityRequestedTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public hideMenu()V
    .locals 4

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 343
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 344
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 347
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify menu to hide"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hideMenuWithoutResize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->onMenuStateChanged(IZ)V

    .line 360
    return-void
.end method

.method public isMenuActivityVisible()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMenuActivityController_7178()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 191
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 193
    :cond_0
    const-string/jumbo v0, "PipMenuActController"

    const-string/jumbo v1, "Expected start menu activity request timed out"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityPinned()V
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mMenuState:I

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->registerInputConsumer()V

    .line 224
    :cond_0
    return-void
.end method

.method public onActivityUnpinned()V
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenu()V

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setStartActivityRequested(Z)V

    .line 229
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/HidePipMenuEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/HidePipMenuEvent;

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/component/HidePipMenuEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .line 500
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mOnAttachDecrementTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequestedTimeoutRunnable:Ljava/lang/Runnable;

    .line 506
    const-wide/16 v2, 0x12c

    .line 505
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    :cond_0
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 234
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify menu pinned animation ended"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pokeMenu()V
    .locals 4

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 323
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 324
    .local v1, "m":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 327
    .restart local v1    # "m":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMenuActController"

    const-string/jumbo v3, "Could not notify poke menu"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAppActions(Landroid/content/pm/ParceledListSlice;)V
    .locals 0
    .param p1, "appActions"    # Landroid/content/pm/ParceledListSlice;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mAppActions:Landroid/content/pm/ParceledListSlice;

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->updateMenuActions()V

    .line 368
    return-void
.end method

.method public setDismissFraction(F)V
    .locals 8
    .param p1, "fraction"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    const-string/jumbo v1, "dismiss_fraction"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 264
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 265
    .local v7, "m":Landroid/os/Message;
    const/4 v0, 0x5

    iput v0, v7, Landroid/os/Message;->what:I

    .line 266
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mTmpDismissFractionData:Landroid/os/Bundle;

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v7    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v7    # "m":Landroid/os/Message;
    :catch_0
    move-exception v6

    .line 270
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipMenuActController"

    const-string/jumbo v1, "Could not notify menu to update dismiss fraction"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 272
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "m":Landroid/os/Message;
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move v5, v1

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_0
.end method

.method public showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 5
    .param p1, "menuState"    # I
    .param p2, "stackBounds"    # Landroid/graphics/Rect;
    .param p3, "movementBounds"    # Landroid/graphics/Rect;
    .param p4, "allowMenuTimeout"    # Z
    .param p5, "willResizeMenu"    # Z

    .prologue
    .line 292
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v3, "menu_state"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const-string/jumbo v3, "stack_bounds"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 296
    const-string/jumbo v3, "movement_bounds"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 297
    const-string/jumbo v3, "allow_timeout"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    const-string/jumbo v3, "resize_menu_on_show"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 299
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 300
    .local v2, "m":Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 301
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mToActivityMessenger:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local v0    # "data":Landroid/os/Bundle;
    .restart local v2    # "m":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "PipMenuActController"

    const-string/jumbo v4, "Could not notify menu to show"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 307
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipMenuActivityController;->mStartActivityRequested:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isStartActivityRequestedElapsed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->startMenuActivity(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    goto :goto_0
.end method
