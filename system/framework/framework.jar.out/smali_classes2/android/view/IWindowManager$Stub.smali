.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addWindowToken:I = 0x11

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4b

.field static final TRANSACTION_closeSystemDialogs:I = 0x2c

.field static final TRANSACTION_createInputConsumer:I = 0x56

.field static final TRANSACTION_destroyInputConsumer:I = 0x57

.field static final TRANSACTION_disableKeyguard:I = 0x24

.field static final TRANSACTION_disableSurfaceTrace:I = 0x37

.field static final TRANSACTION_dismissKeyguard:I = 0x2a

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x4a

.field static final TRANSACTION_enableSurfaceTrace:I = 0x36

.field static final TRANSACTION_endProlongedAnimations:I = 0x1f

.field static final TRANSACTION_executeAppTransition:I = 0x1e

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x26

.field static final TRANSACTION_freezeRotation:I = 0x3d

.field static final TRANSACTION_getAnimationScale:I = 0x2d

.field static final TRANSACTION_getAnimationScales:I = 0x2e

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x31

.field static final TRANSACTION_getCurrentImeTouchRegion:I = 0x58

.field static final TRANSACTION_getDefaultDisplayRotation:I = 0x39

.field static final TRANSACTION_getDockedStackSide:I = 0x4d

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x15

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x3c

.field static final TRANSACTION_getStableInsets:I = 0x54

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4c

.field static final TRANSACTION_hasNavigationBar:I = 0x47

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x29

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x27

.field static final TRANSACTION_isKeyguardSecure:I = 0x28

.field static final TRANSACTION_isRotationFrozen:I = 0x3f

.field static final TRANSACTION_isSafeModeEnabled:I = 0x49

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_lockNow:I = 0x48

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x16

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x1a

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x18

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x1b

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x17

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x19

.field static final TRANSACTION_prepareAppTransition:I = 0x14

.field static final TRANSACTION_reenableKeyguard:I = 0x25

.field static final TRANSACTION_registerDockedStackListener:I = 0x50

.field static final TRANSACTION_registerPinnedStackListener:I = 0x51

.field static final TRANSACTION_registerShortcutKey:I = 0x55

.field static final TRANSACTION_registerWallpaperVisibilityListener:I = 0x41

.field static final TRANSACTION_removeRotationWatcher:I = 0x3b

.field static final TRANSACTION_removeWindowToken:I = 0x12

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x53

.field static final TRANSACTION_requestAssistScreenshot:I = 0x43

.field static final TRANSACTION_screenshotWallpaper:I = 0x40

.field static final TRANSACTION_setAnimationScale:I = 0x2f

.field static final TRANSACTION_setAnimationScales:I = 0x30

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x4f

.field static final TRANSACTION_setDockedStackResizing:I = 0x4e

.field static final TRANSACTION_setEventDispatching:I = 0x10

.field static final TRANSACTION_setFocusedApp:I = 0x13

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x32

.field static final TRANSACTION_setNewDisplayOverrideConfiguration:I = 0x21

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setPipVisibility:I = 0x46

.field static final TRANSACTION_setRecentsVisibility:I = 0x45

.field static final TRANSACTION_setResizeDimLayer:I = 0x52

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x35

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x34

.field static final TRANSACTION_setSwitchingUser:I = 0x2b

.field static final TRANSACTION_showStrictModeViolation:I = 0x33

.field static final TRANSACTION_startFreezingScreen:I = 0x22

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x44

.field static final TRANSACTION_stopFreezingScreen:I = 0x23

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x3e

.field static final TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x42

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x20

.field static final TRANSACTION_updateRotation:I = 0x38

.field static final TRANSACTION_watchRotation:I = 0x3a


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 73
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1037
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x1

    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 55
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v70

    .line 56
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v70, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v6, 0x1

    return v6

    .line 57
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .end local v7    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v70

    .line 64
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v70, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 65
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    .end local v70    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v70

    .line 72
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v70, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v6, 0x1

    return v6

    .line 73
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 78
    .end local v70    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v38

    .line 82
    .local v38, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v55

    .line 84
    .local v55, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v60

    .line 85
    .local v60, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v55

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v68

    .line 86
    .local v68, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v68, :cond_3

    invoke-interface/range {v68 .. v68}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 87
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 92
    .end local v38    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v55    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v60    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v68    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v42

    .line 95
    .local v42, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v70

    .line 96
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v70, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v6, 0x1

    return v6

    .line 97
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 102
    .end local v42    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v70    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7    # "_arg0":I
    new-instance v48, Landroid/graphics/Point;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v48, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v48, :cond_5

    .line 110
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 114
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v7    # "_arg0":I
    .end local v48    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .restart local v7    # "_arg0":I
    new-instance v48, Landroid/graphics/Point;

    invoke-direct/range {v48 .. v48}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v48    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v48, :cond_6

    .line 128
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v6, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 132
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v7    # "_arg0":I
    .end local v48    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 145
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v6, 0x1

    return v6

    .line 151
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_9
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 154
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v6, 0x1

    return v6

    .line 160
    .end local v7    # "_arg0":I
    :sswitch_a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 163
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v64

    .line 164
    .local v64, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v6, 0x1

    return v6

    .line 170
    .end local v7    # "_arg0":I
    .end local v64    # "_result":I
    :sswitch_b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 173
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v64

    .line 174
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v6, 0x1

    return v6

    .line 180
    .end local v7    # "_arg0":I
    .end local v64    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 186
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 187
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v6, 0x1

    return v6

    .line 193
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 198
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v6, 0x1

    return v6

    .line 204
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v6, 0x1

    return v6

    .line 215
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 223
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 225
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 226
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v6, 0x1

    return v6

    .line 232
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v44, 0x1

    .line 235
    .local v44, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v6, 0x1

    return v6

    .line 234
    .end local v44    # "_arg0":Z
    :cond_7
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_7

    .line 241
    .end local v44    # "_arg0":Z
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 245
    .local v31, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 247
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 248
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v8, v9}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;II)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v6, 0x1

    return v6

    .line 254
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 258
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 259
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 260
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v6, 0x1

    return v6

    .line 265
    .end local v8    # "_arg1":I
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 269
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v57, 0x1

    .line 270
    .local v57, "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    const/4 v6, 0x1

    return v6

    .line 269
    .end local v57    # "_arg1":Z
    :cond_8
    const/16 v57, 0x0

    .restart local v57    # "_arg1":Z
    goto :goto_8

    .line 276
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v57    # "_arg1":Z
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 280
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v57, 0x1

    .line 281
    .restart local v57    # "_arg1":Z
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 282
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    const/4 v6, 0x1

    return v6

    .line 280
    .end local v57    # "_arg1":Z
    :cond_9
    const/16 v57, 0x0

    .restart local v57    # "_arg1":Z
    goto :goto_9

    .line 287
    .end local v7    # "_arg0":I
    .end local v57    # "_arg1":Z
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v64

    .line 289
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v6, 0x1

    return v6

    .line 295
    .end local v64    # "_result":I
    :sswitch_16
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 299
    .local v43, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 301
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 303
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v16

    .line 304
    .local v16, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    const/4 v6, 0x1

    return v6

    .line 310
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v43    # "_arg0":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 314
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 316
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 318
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 319
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v6, 0x1

    return v6

    .line 325
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 329
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 331
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 333
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 334
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    const/4 v6, 0x1

    return v6

    .line 340
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 343
    sget-object v6, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/GraphicBuffer;

    .line 349
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 351
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 353
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v16

    .line 355
    .restart local v16    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v17, 0x1

    .local v17, "_arg4":Z
    :goto_b
    move-object/from16 v12, p0

    move v14, v8

    move v15, v9

    .line 356
    invoke-virtual/range {v12 .. v17}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v6, 0x1

    return v6

    .line 346
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v17    # "_arg4":Z
    :cond_a
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/graphics/GraphicBuffer;
    goto :goto_a

    .line 355
    .end local v13    # "_arg0":Landroid/graphics/GraphicBuffer;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v16    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_b
    const/16 v17, 0x0

    .restart local v17    # "_arg4":Z
    goto :goto_b

    .line 362
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v17    # "_arg4":Z
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 365
    sget-object v6, Landroid/graphics/GraphicBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/GraphicBuffer;

    .line 371
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 373
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 375
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 377
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 379
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v24

    .line 381
    .local v24, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    const/16 v25, 0x1

    .local v25, "_arg6":Z
    :goto_d
    move-object/from16 v18, p0

    move-object/from16 v19, v13

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v23, v11

    .line 382
    invoke-virtual/range {v18 .. v25}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V

    .line 383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    const/4 v6, 0x1

    return v6

    .line 368
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v24    # "_arg5":Landroid/os/IRemoteCallback;
    .end local v25    # "_arg6":Z
    :cond_c
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/graphics/GraphicBuffer;
    goto :goto_c

    .line 381
    .end local v13    # "_arg0":Landroid/graphics/GraphicBuffer;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v24    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_d
    const/16 v25, 0x0

    .restart local v25    # "_arg6":Z
    goto :goto_d

    .line 388
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v24    # "_arg5":Landroid/os/IRemoteCallback;
    .end local v25    # "_arg6":Z
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v46

    check-cast v46, [Landroid/view/AppTransitionAnimationSpec;

    .line 392
    .local v46, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v51

    .line 394
    .local v51, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v59

    .line 396
    .local v59, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v62, 0x1

    .line 397
    .local v62, "_arg3":Z
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v51

    move-object/from16 v3, v59

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    const/4 v6, 0x1

    return v6

    .line 396
    .end local v62    # "_arg3":Z
    :cond_e
    const/16 v62, 0x0

    .restart local v62    # "_arg3":Z
    goto :goto_e

    .line 403
    .end local v46    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v51    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v59    # "_arg2":Landroid/os/IRemoteCallback;
    .end local v62    # "_arg3":Z
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 407
    .restart local v43    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 408
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    const/4 v6, 0x1

    return v6

    .line 414
    .end local v8    # "_arg1":I
    .end local v43    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v33

    .line 418
    .local v33, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v51

    .line 420
    .restart local v51    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v61, 0x1

    .line 421
    .local v61, "_arg2":Z
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v51

    move/from16 v3, v61

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    const/4 v6, 0x1

    return v6

    .line 420
    .end local v61    # "_arg2":Z
    :cond_f
    const/16 v61, 0x0

    .restart local v61    # "_arg2":Z
    goto :goto_f

    .line 427
    .end local v33    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v51    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v61    # "_arg2":Z
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    const/4 v6, 0x1

    return v6

    .line 434
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v6, 0x1

    return v6

    .line 441
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 444
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/res/Configuration;

    .line 450
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v50

    .line 452
    .local v50, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 453
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2, v9}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v65

    .line 454
    .local v65, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    if-eqz v65, :cond_11

    .line 456
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    const/4 v6, 0x1

    move-object/from16 v0, v65

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 462
    :goto_11
    const/4 v6, 0x1

    return v6

    .line 447
    .end local v9    # "_arg2":I
    .end local v50    # "_arg1":Landroid/os/IBinder;
    .end local v65    # "_result":Landroid/content/res/Configuration;
    :cond_10
    const/16 v28, 0x0

    .local v28, "_arg0":Landroid/content/res/Configuration;
    goto :goto_10

    .line 460
    .end local v28    # "_arg0":Landroid/content/res/Configuration;
    .restart local v9    # "_arg2":I
    .restart local v50    # "_arg1":Landroid/os/IBinder;
    .restart local v65    # "_result":Landroid/content/res/Configuration;
    :cond_11
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 466
    .end local v9    # "_arg2":I
    .end local v50    # "_arg1":Landroid/os/IBinder;
    .end local v65    # "_result":Landroid/content/res/Configuration;
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 469
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/res/Configuration;

    .line 475
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 476
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setNewDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)[I

    move-result-object v72

    .line 477
    .local v72, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    move-object/from16 v0, p3

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 479
    const/4 v6, 0x1

    return v6

    .line 472
    .end local v8    # "_arg1":I
    .end local v72    # "_result":[I
    :cond_12
    const/16 v28, 0x0

    .restart local v28    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_12

    .line 483
    .end local v28    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 487
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 488
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    const/4 v6, 0x1

    return v6

    .line 494
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 497
    const/4 v6, 0x1

    return v6

    .line 501
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 505
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 506
    .local v56, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    const/4 v6, 0x1

    return v6

    .line 512
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v56    # "_arg1":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 515
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v6, 0x1

    return v6

    .line 521
    .end local v31    # "_arg0":Landroid/os/IBinder;
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v35

    .line 524
    .local v35, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v6, 0x1

    return v6

    .line 530
    .end local v35    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v70

    .line 532
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    if-eqz v70, :cond_13

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    const/4 v6, 0x1

    return v6

    .line 533
    :cond_13
    const/4 v6, 0x0

    goto :goto_13

    .line 538
    .end local v70    # "_result":Z
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v70

    .line 540
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v70, :cond_14

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    const/4 v6, 0x1

    return v6

    .line 541
    :cond_14
    const/4 v6, 0x0

    goto :goto_14

    .line 546
    .end local v70    # "_result":Z
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v70

    .line 548
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    if-eqz v70, :cond_15

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 550
    const/4 v6, 0x1

    return v6

    .line 549
    :cond_15
    const/4 v6, 0x0

    goto :goto_15

    .line 554
    .end local v70    # "_result":Z
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v41

    .line 557
    .local v41, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    const/4 v6, 0x1

    return v6

    .line 563
    .end local v41    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    const/16 v44, 0x1

    .line 566
    .restart local v44    # "_arg0":Z
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v6, 0x1

    return v6

    .line 565
    .end local v44    # "_arg0":Z
    :cond_16
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_16

    .line 572
    .end local v44    # "_arg0":Z
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 575
    .restart local v43    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v6, 0x1

    return v6

    .line 581
    .end local v43    # "_arg0":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 584
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v63

    .line 585
    .local v63, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 587
    const/4 v6, 0x1

    return v6

    .line 591
    .end local v7    # "_arg0":I
    .end local v63    # "_result":F
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v71

    .line 593
    .local v71, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 595
    const/4 v6, 0x1

    return v6

    .line 599
    .end local v71    # "_result":[F
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 603
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v47

    .line 604
    .local v47, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v6, 0x1

    return v6

    .line 610
    .end local v7    # "_arg0":I
    .end local v47    # "_arg1":F
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v45

    .line 613
    .local v45, "_arg0":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    const/4 v6, 0x1

    return v6

    .line 619
    .end local v45    # "_arg0":[F
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v63

    .line 621
    .restart local v63    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 623
    const/4 v6, 0x1

    return v6

    .line 627
    .end local v63    # "_result":F
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    const/16 v44, 0x1

    .line 630
    .restart local v44    # "_arg0":Z
    :goto_17
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v6, 0x1

    return v6

    .line 629
    .end local v44    # "_arg0":Z
    :cond_17
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_17

    .line 636
    .end local v44    # "_arg0":Z
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v44, 0x1

    .line 639
    .restart local v44    # "_arg0":Z
    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 640
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    const/4 v6, 0x1

    return v6

    .line 638
    .end local v44    # "_arg0":Z
    :cond_18
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_18

    .line 645
    .end local v44    # "_arg0":Z
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 647
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 648
    .restart local v43    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v6, 0x1

    return v6

    .line 654
    .end local v43    # "_arg0":Ljava/lang/String;
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 658
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v57, 0x1

    .line 659
    .restart local v57    # "_arg1":Z
    :goto_19
    move-object/from16 v0, p0

    move/from16 v1, v57

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 660
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    const/4 v6, 0x1

    return v6

    .line 658
    .end local v57    # "_arg1":Z
    :cond_19
    const/16 v57, 0x0

    .restart local v57    # "_arg1":Z
    goto :goto_19

    .line 665
    .end local v7    # "_arg0":I
    .end local v57    # "_arg1":Z
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    .line 668
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/ParcelFileDescriptor;

    .line 673
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->enableSurfaceTrace(Landroid/os/ParcelFileDescriptor;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    const/4 v6, 0x1

    return v6

    .line 671
    :cond_1a
    const/16 v32, 0x0

    .local v32, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_1a

    .line 679
    .end local v32    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->disableSurfaceTrace()V

    .line 681
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 682
    const/4 v6, 0x1

    return v6

    .line 686
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    const/16 v44, 0x1

    .line 690
    .restart local v44    # "_arg0":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    const/16 v57, 0x1

    .line 691
    .restart local v57    # "_arg1":Z
    :goto_1c
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 692
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    const/4 v6, 0x1

    return v6

    .line 688
    .end local v44    # "_arg0":Z
    .end local v57    # "_arg1":Z
    :cond_1b
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_1b

    .line 690
    :cond_1c
    const/16 v57, 0x0

    .restart local v57    # "_arg1":Z
    goto :goto_1c

    .line 697
    .end local v44    # "_arg0":Z
    .end local v57    # "_arg1":Z
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v64

    .line 699
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v6, 0x1

    return v6

    .line 705
    .end local v64    # "_result":I
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v36

    .line 709
    .local v36, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 710
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v64

    .line 711
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    const/4 v6, 0x1

    return v6

    .line 717
    .end local v8    # "_arg1":I
    .end local v36    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v64    # "_result":I
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v36

    .line 720
    .restart local v36    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 721
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 722
    const/4 v6, 0x1

    return v6

    .line 726
    .end local v36    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v64

    .line 728
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    const/4 v6, 0x1

    return v6

    .line 734
    .end local v64    # "_result":I
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 737
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    const/4 v6, 0x1

    return v6

    .line 743
    .end local v7    # "_arg0":I
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 745
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    const/4 v6, 0x1

    return v6

    .line 750
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v70

    .line 752
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    if-eqz v70, :cond_1d

    const/4 v6, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v6, 0x1

    return v6

    .line 753
    :cond_1d
    const/4 v6, 0x0

    goto :goto_1d

    .line 758
    .end local v70    # "_result":Z
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v66

    .line 760
    .local v66, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    if-eqz v66, :cond_1e

    .line 762
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    const/4 v6, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 768
    :goto_1e
    const/4 v6, 0x1

    return v6

    .line 766
    :cond_1e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 772
    .end local v66    # "_result":Landroid/graphics/Bitmap;
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v37

    .line 776
    .local v37, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 777
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v70

    .line 778
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    if-eqz v70, :cond_1f

    const/4 v6, 0x1

    :goto_1f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    const/4 v6, 0x1

    return v6

    .line 779
    :cond_1f
    const/4 v6, 0x0

    goto :goto_1f

    .line 784
    .end local v8    # "_arg1":I
    .end local v37    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v70    # "_result":Z
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v37

    .line 788
    .restart local v37    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 789
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    const/4 v6, 0x1

    return v6

    .line 795
    .end local v8    # "_arg1":I
    .end local v37    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v39

    .line 798
    .local v39, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v70

    .line 799
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v70, :cond_20

    const/4 v6, 0x1

    :goto_20
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v6, 0x1

    return v6

    .line 800
    :cond_20
    const/4 v6, 0x0

    goto :goto_20

    .line 805
    .end local v39    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v70    # "_result":Z
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 808
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 809
    const/4 v6, 0x1

    return v6

    .line 813
    .end local v7    # "_arg0":I
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v44, 0x1

    .line 816
    .restart local v44    # "_arg0":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 817
    const/4 v6, 0x1

    return v6

    .line 815
    .end local v44    # "_arg0":Z
    :cond_21
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_21

    .line 821
    .end local v44    # "_arg0":Z
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v44, 0x1

    .line 824
    .restart local v44    # "_arg0":Z
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setPipVisibility(Z)V

    .line 825
    const/4 v6, 0x1

    return v6

    .line 823
    .end local v44    # "_arg0":Z
    :cond_22
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_22

    .line 829
    .end local v44    # "_arg0":Z
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v70

    .line 831
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    if-eqz v70, :cond_23

    const/4 v6, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    const/4 v6, 0x1

    return v6

    .line 832
    :cond_23
    const/4 v6, 0x0

    goto :goto_23

    .line 837
    .end local v70    # "_result":Z
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_24

    .line 840
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    .line 845
    :goto_24
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 846
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    const/4 v6, 0x1

    return v6

    .line 843
    :cond_24
    const/16 v30, 0x0

    .local v30, "_arg0":Landroid/os/Bundle;
    goto :goto_24

    .line 851
    .end local v30    # "_arg0":Landroid/os/Bundle;
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v70

    .line 853
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    if-eqz v70, :cond_25

    const/4 v6, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    const/4 v6, 0x1

    return v6

    .line 854
    :cond_25
    const/4 v6, 0x0

    goto :goto_25

    .line 859
    .end local v70    # "_result":Z
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v6, 0x1

    return v6

    .line 866
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 869
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v70

    .line 870
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    if-eqz v70, :cond_26

    const/4 v6, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    const/4 v6, 0x1

    return v6

    .line 871
    :cond_26
    const/4 v6, 0x0

    goto :goto_26

    .line 876
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v70    # "_result":Z
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 878
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v31

    .line 879
    .restart local v31    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v69

    .line 880
    .local v69, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    if-eqz v69, :cond_27

    .line 882
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    const/4 v6, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 888
    :goto_27
    const/4 v6, 0x1

    return v6

    .line 886
    :cond_27
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 892
    .end local v31    # "_arg0":Landroid/os/IBinder;
    .end local v69    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 893
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v64

    .line 894
    .restart local v64    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    const/4 v6, 0x1

    return v6

    .line 900
    .end local v64    # "_result":I
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_28

    const/16 v44, 0x1

    .line 903
    .restart local v44    # "_arg0":Z
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    .line 904
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    const/4 v6, 0x1

    return v6

    .line 902
    .end local v44    # "_arg0":Z
    :cond_28
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_28

    .line 909
    .end local v44    # "_arg0":Z
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_29

    .line 912
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/graphics/Rect;

    .line 917
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 918
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 919
    const/4 v6, 0x1

    return v6

    .line 915
    :cond_29
    const/16 v29, 0x0

    .local v29, "_arg0":Landroid/graphics/Rect;
    goto :goto_29

    .line 923
    .end local v29    # "_arg0":Landroid/graphics/Rect;
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    move-result-object v34

    .line 926
    .local v34, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v6, 0x1

    return v6

    .line 932
    .end local v34    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 936
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IPinnedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackListener;

    move-result-object v52

    .line 937
    .local v52, "_arg1":Landroid/view/IPinnedStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v6, 0x1

    return v6

    .line 943
    .end local v7    # "_arg0":I
    .end local v52    # "_arg1":Landroid/view/IPinnedStackListener;
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v44, 0x1

    .line 947
    .restart local v44    # "_arg0":Z
    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 949
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v58

    .line 950
    .local v58, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v44

    move/from16 v2, v58

    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    .line 951
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    const/4 v6, 0x1

    return v6

    .line 945
    .end local v8    # "_arg1":I
    .end local v44    # "_arg0":Z
    .end local v58    # "_arg2":F
    :cond_2a
    const/16 v44, 0x0

    .restart local v44    # "_arg0":Z
    goto :goto_2a

    .line 956
    .end local v44    # "_arg0":Z
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v40

    .line 960
    .local v40, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 961
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    const/4 v6, 0x1

    return v6

    .line 967
    .end local v8    # "_arg1":I
    .end local v40    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 971
    .restart local v7    # "_arg0":I
    new-instance v49, Landroid/graphics/Rect;

    invoke-direct/range {v49 .. v49}, Landroid/graphics/Rect;-><init>()V

    .line 972
    .local v49, "_arg1":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    if-eqz v49, :cond_2b

    .line 975
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 976
    const/4 v6, 0x1

    move-object/from16 v0, v49

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 981
    :goto_2b
    const/4 v6, 0x1

    return v6

    .line 979
    :cond_2b
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 985
    .end local v7    # "_arg0":I
    .end local v49    # "_arg1":Landroid/graphics/Rect;
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v26

    .line 989
    .local v26, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v54

    .line 990
    .local v54, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v6, 0x1

    return v6

    .line 996
    .end local v26    # "_arg0":J
    .end local v54    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 998
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 1000
    .restart local v43    # "_arg0":Ljava/lang/String;
    new-instance v53, Landroid/view/InputChannel;

    invoke-direct/range {v53 .. v53}, Landroid/view/InputChannel;-><init>()V

    .line 1001
    .local v53, "_arg1":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V

    .line 1002
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1003
    if-eqz v53, :cond_2c

    .line 1004
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v6, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1010
    :goto_2c
    const/4 v6, 0x1

    return v6

    .line 1008
    :cond_2c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    .line 1014
    .end local v43    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Landroid/view/InputChannel;
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 1017
    .restart local v43    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;)Z

    move-result v70

    .line 1018
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1019
    if-eqz v70, :cond_2d

    const/4 v6, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    const/4 v6, 0x1

    return v6

    .line 1019
    :cond_2d
    const/4 v6, 0x0

    goto :goto_2d

    .line 1024
    .end local v43    # "_arg0":Ljava/lang/String;
    .end local v70    # "_result":Z
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1025
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v67

    .line 1026
    .local v67, "_result":Landroid/graphics/Region;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    if-eqz v67, :cond_2e

    .line 1028
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1029
    const/4 v6, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1034
    :goto_2e
    const/4 v6, 0x1

    return v6

    .line 1032
    :cond_2e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
