.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$InputConsumer;,
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$PointerEventListener;,
        Landroid/view/WindowManagerPolicy$ScreenOffListener;,
        Landroid/view/WindowManagerPolicy$ScreenOnListener;,
        Landroid/view/WindowManagerPolicy$StartingSurface;,
        Landroid/view/WindowManagerPolicy$WindowManagerFuncs;,
        Landroid/view/WindowManagerPolicy$WindowState;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final APPLICATION_LAYER:I = 0x2

.field public static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_INTERACTIVE:I = 0x20000000

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x2

.field public static final FLAG_WAKE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final NAV_BAR_BOTTOM:I = 0x4

.field public static final NAV_BAR_LEFT:I = 0x1

.field public static final NAV_BAR_RIGHT:I = 0x2

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_FINGERPRINT:I = 0xb

.field public static final OFF_BECAUSE_OF_P_SENSOR:I = 0x4

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1

.field public static final WATCH_POINTER:Z


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Landroid/view/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract beginLayoutLw(ZIIII)V
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract canMagnifyWindow(I)Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishLayoutLw()V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp()V
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getConfigDisplayHeight(IIIII)I
.end method

.method public abstract getConfigDisplayWidth(IIIII)I
.end method

.method public abstract getContentRectLw(Landroid/graphics/Rect;)V
.end method

.method public abstract getInputMethodWindowVisibleHeightLw()I
.end method

.method public abstract getInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNavBarPosition()I
.end method

.method public abstract getNonDecorDisplayHeight(IIIII)I
.end method

.method public abstract getNonDecorDisplayWidth(IIIII)I
.end method

.method public abstract getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
.end method

.method public abstract getStableInsetsLw(IIILandroid/graphics/Rect;)V
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 953
    packed-switch p1, :pswitch_data_0

    .line 966
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v0, 0x0

    return v0

    .line 956
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 958
    :pswitch_1
    const/4 v0, -0x2

    return v0

    .line 960
    :pswitch_2
    const/4 v0, -0x1

    return v0

    .line 962
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 964
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 953
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 805
    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .locals 5
    .param p1, "type"    # I
    .param p2, "canAddInternalSystemWindow"    # Z

    .prologue
    const/16 v0, 0xb

    const/16 v1, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 827
    if-lt p1, v4, :cond_0

    const/16 v2, 0x63

    if-gt p1, v2, :cond_0

    .line 828
    return v3

    .line 831
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 931
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return v3

    .line 834
    :sswitch_0
    return v4

    .line 837
    :sswitch_1
    return v3

    .line 839
    :sswitch_2
    return v3

    .line 841
    :sswitch_3
    return v3

    .line 843
    :sswitch_4
    const/4 v0, 0x3

    return v0

    .line 846
    :sswitch_5
    const/4 v0, 0x4

    return v0

    .line 849
    :sswitch_6
    const/4 v0, 0x5

    return v0

    .line 851
    :sswitch_7
    const/4 v0, 0x6

    return v0

    .line 853
    :sswitch_8
    const/4 v0, 0x7

    return v0

    .line 856
    :sswitch_9
    const/16 v0, 0x8

    return v0

    .line 859
    :sswitch_a
    const/16 v0, 0x9

    return v0

    .line 862
    :sswitch_b
    if-eqz p2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 864
    :sswitch_c
    const/16 v0, 0xc

    return v0

    .line 867
    :sswitch_d
    const/16 v0, 0xd

    return v0

    .line 870
    :sswitch_e
    const/16 v0, 0xe

    return v0

    .line 873
    :sswitch_f
    const/16 v0, 0xf

    return v0

    .line 875
    :sswitch_10
    const/16 v0, 0x11

    return v0

    .line 877
    :sswitch_11
    const/16 v0, 0x12

    return v0

    .line 879
    :sswitch_12
    const/16 v0, 0x13

    return v0

    .line 881
    :sswitch_13
    const/16 v0, 0x14

    return v0

    .line 885
    :sswitch_14
    const/16 v0, 0x15

    return v0

    .line 889
    :sswitch_15
    if-eqz p2, :cond_2

    const/16 v0, 0x16

    :cond_2
    return v0

    .line 892
    :sswitch_16
    const/16 v0, 0x17

    return v0

    .line 895
    :sswitch_17
    const/16 v0, 0x18

    return v0

    .line 899
    :sswitch_18
    const/16 v0, 0x19

    return v0

    .line 902
    :sswitch_19
    if-eqz p2, :cond_3

    const/16 v1, 0x1a

    :cond_3
    return v1

    .line 905
    :sswitch_1a
    const/16 v0, 0x1b

    return v0

    .line 908
    :sswitch_1b
    const/16 v0, 0x1c

    return v0

    .line 912
    :sswitch_1c
    const/16 v0, 0x1d

    return v0

    .line 915
    :sswitch_1d
    const/16 v0, 0x1e

    return v0

    .line 917
    :sswitch_1e
    const/16 v0, 0x1f

    return v0

    .line 919
    :sswitch_1f
    const/16 v0, 0x20

    return v0

    .line 922
    :sswitch_20
    const/16 v0, 0x21

    return v0

    .line 927
    :sswitch_21
    const/16 v0, 0x64

    return v0

    .line 831
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_11
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_4
        0x7d3 -> :sswitch_b
        0x7d5 -> :sswitch_9
        0x7d6 -> :sswitch_15
        0x7d7 -> :sswitch_a
        0x7d8 -> :sswitch_8
        0x7d9 -> :sswitch_13
        0x7da -> :sswitch_19
        0x7db -> :sswitch_e
        0x7dc -> :sswitch_f
        0x7dd -> :sswitch_0
        0x7de -> :sswitch_12
        0x7df -> :sswitch_1e
        0x7e0 -> :sswitch_1c
        0x7e1 -> :sswitch_10
        0x7e2 -> :sswitch_20
        0x7e3 -> :sswitch_16
        0x7e4 -> :sswitch_14
        0x7e5 -> :sswitch_1f
        0x7e6 -> :sswitch_7
        0x7e7 -> :sswitch_d
        0x7e8 -> :sswitch_17
        0x7ea -> :sswitch_1b
        0x7eb -> :sswitch_1a
        0x7ee -> :sswitch_1
        0x7ef -> :sswitch_6
        0x7f0 -> :sswitch_1d
        0x7f1 -> :sswitch_5
        0x7f2 -> :sswitch_2
        0x7f3 -> :sswitch_3
        0x7f4 -> :sswitch_18
        0x7f5 -> :sswitch_1
        0x7f6 -> :sswitch_c
        0x8ff -> :sswitch_21
    .end sparse-switch
.end method

.method public getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 794
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(JI)I
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isDockSideAllowed(I)Z
.end method

.method public abstract isGestureButtonEnabled()Z
.end method

.method public abstract isGestureButtonRegion(II)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isShowingDreamLw()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyAppLaunchFailedLw(Ljava/lang/String;)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onKeyguardDone()V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract preloadWallapepr(Landroid/graphics/Bitmap;)V
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 1651
    return-void
.end method

.method public abstract setDisplayOverscan(Landroid/view/Display;IIII)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract shouldRotateSeamlessly(II)Z
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps(Z)V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp()V
.end method

.method public abstract stopLongshotConnection()V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method
