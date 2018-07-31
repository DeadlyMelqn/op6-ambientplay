.class public Lcom/android/systemui/statusbar/car/CarStatusBar;
.super Lcom/android/systemui/statusbar/phone/StatusBar;
.source "CarStatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/CarStatusBar$1;,
        Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

.field private mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

.field private mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

.field private mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

.field private mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

.field private mNavigationBarWindow:Landroid/view/ViewGroup;

.field private mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

.field private mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mQueueLock:Ljava/lang/Object;

.field private mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/CarStatusBar;)Lcom/android/systemui/statusbar/car/CarNavigationBarController;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/car/CarStatusBar;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 283
    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/CarStatusBar$1;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    return-void
.end method

.method private createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Lcom/android/systemui/statusbar/car/CarBatteryController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/car/CarBatteryController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->addBatteryViewHandler(Lcom/android/systemui/statusbar/car/CarBatteryController$BatteryViewHandler;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    return-object v0
.end method

.method private getDefaultWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x1080263

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private registerPackageChangeReceivers()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method private startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 361
    const/16 v13, -0x60

    .line 363
    .local v13, "result":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 373
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 363
    const/4 v1, 0x0

    .line 367
    const/4 v5, 0x0

    .line 368
    const/4 v6, 0x0

    .line 369
    const/4 v7, 0x0

    .line 370
    const/high16 v8, 0x14000000

    .line 371
    const/4 v9, 0x0

    move-object v3, p1

    move-object/from16 v10, p2

    .line 363
    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 378
    :goto_0
    return v13

    .line 374
    :catch_0
    move-exception v12

    .line 375
    .local v12, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "CarStatusBar"

    const-string/jumbo v1, "Unable to start activity"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public animateExpandNotificationsPanel(I)V
    .locals 1
    .param p1, "test"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeAllHeadsUpEntries()V

    .line 405
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel(I)V

    .line 406
    return-void
.end method

.method protected createNavigationBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-eqz v2, :cond_0

    .line 156
    return-void

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    .line 163
    const v3, 0x7f0d00b0

    .line 162
    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 165
    const-string/jumbo v2, "CarStatusBar"

    const-string/jumbo v3, "CarStatusBar failed inflate for R.layout.navigation_bar_window"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    const v4, 0x7f0d0025

    invoke-static {v2, v4, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 170
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    if-nez v2, :cond_2

    .line 172
    const-string/jumbo v2, "CarStatusBar"

    const-string/jumbo v3, "CarStatusBar failed inflate for R.layout.car_navigation_bar"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-direct {v2, v3, v4, p0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/car/CarNavigationBarView;Lcom/android/systemui/statusbar/car/CarStatusBar;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/CarNavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->setAlwaysOpaque(Z)V

    .line 179
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 181
    const/16 v3, 0x7e3

    .line 182
    const v4, 0x840068

    .line 187
    const/4 v5, -0x3

    move v2, v1

    .line 179
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 188
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string/jumbo v1, "CarNavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarWindow:Landroid/view/ViewGroup;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    return-void
.end method

.method protected createUserSwitcher()V
    .locals 4

    .prologue
    .line 325
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 326
    .local v0, "userSwitcherController":Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->useFullscreenUserSwitcher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    new-instance v2, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f0a00ff

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 327
    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/view/ViewStub;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->createUserSwitcher()V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    .line 199
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mStackScroller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mStackScroller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v4}, Lcom/android/systemui/statusbar/car/CarStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    const-string/jumbo v4, " scroll "

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v4

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    const-string/jumbo v4, ","

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v4

    .line 200
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 205
    const-string/jumbo v2, "  mTaskStackListener="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    const-string/jumbo v2, "  mController="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 208
    const-string/jumbo v2, "  mFullscreenUserSwitcher="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 209
    const-string/jumbo v2, "  mCarBatteryController="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 211
    const-string/jumbo v2, "  mBatteryMeterView="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    const-string/jumbo v2, "  mConnectedDeviceSignalController="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    const-string/jumbo v2, "  mNavigationBarView="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/classifier/FalsingManager;->dump(Ljava/io/PrintWriter;)V

    .line 223
    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingLog;->dump(Ljava/io/PrintWriter;)V

    .line 225
    const-string/jumbo v2, "SharedPreferences:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/Prefs;->getAll(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string/jumbo v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 198
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 229
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/car/CarNavigationBarView;

    return-object v0
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getStatusBarWindowTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDockedTask()Z
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    return v0
.end method

.method public hideBatteryView()V
    .locals 3

    .prologue
    .line 274
    const-string/jumbo v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const-string/jumbo v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 281
    :cond_1
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_car_CarStatusBar_4367(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/BatteryMeterView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 124
    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 125
    .local v1, "stub":Landroid/view/ViewStub;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, "signalsView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 132
    const v4, 0x7f070425

    .line 131
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 130
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    if-eqz v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->stopListening()V

    .line 137
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mConnectedDeviceSignalController:Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/car/ConnectedDeviceSignalController;->startListening()V

    .line 141
    const-string/jumbo v2, "CarStatusBar"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const-string/jumbo v2, "CarStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeStatusBarView(). mBatteryMeterView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected makeStatusBarView()V
    .locals 3

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeStatusBarView()V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-static {v1}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    .line 117
    .local v0, "manager":Lcom/android/systemui/fragments/FragmentHostManager;
    const-string/jumbo v1, "CollapsedStatusBarFragment"

    new-instance v2, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/car/-$Lambda$JqfYPs5jG3hhVYu6rIxnLDxI5nQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 145
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onDensityOrFontScaleChanged()V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mController:Lcom/android/systemui/statusbar/car/CarNavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarNavigationBarController;->onDensityOrFontScaleChanged()V

    .line 419
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->getDefaultWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mNotificationPanelBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    return-void
.end method

.method protected shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mPanelExpanded:Z

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    return v0

    .line 396
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldPeek(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public showBatteryView()V
    .locals 3

    .prologue
    .line 263
    const-string/jumbo v0, "CarStatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const-string/jumbo v0, "CarStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showBatteryView(). mBatteryMeterView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    .line 270
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->start()V

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/car/CarStatusBar;Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mTaskStackListener:Lcom/android/systemui/statusbar/car/CarStatusBar$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->registerPackageChangeReceivers()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/CarStatusBar;->createBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mCarBatteryController:Lcom/android/systemui/statusbar/car/CarBatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/CarBatteryController;->startListening()V

    .line 94
    return-void
.end method

.method public startActivityOnStack(Landroid/content/Intent;I)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "stackId"    # I

    .prologue
    .line 382
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 383
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 384
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/car/CarStatusBar;->startActivityWithOptions(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v1

    return v1
.end method

.method public updateKeyguardState(ZZ)V
    .locals 2
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateKeyguardState(ZZ)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    .line 347
    iget v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->show()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->hide()V

    goto :goto_0
.end method

.method public updateMediaMetaData(ZZ)V
    .locals 0
    .param p1, "metaDataChanged"    # Z
    .param p2, "allowEnterAnimation"    # Z

    .prologue
    .line 358
    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 337
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->userSwitched(I)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/CarStatusBar;->mFullscreenUserSwitcher:Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/FullscreenUserSwitcher;->onUserSwitched(I)V

    .line 341
    :cond_0
    return-void
.end method
