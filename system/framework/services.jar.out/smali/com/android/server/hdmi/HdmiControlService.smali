.class public final Lcom/android/server/hdmi/HdmiControlService;
.super Lcom/android/server/SystemService;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiControlService$BinderService;,
        Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;,
        Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;,
        Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;,
        Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;,
        Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    }
.end annotation


# static fields
.field static final INITIATED_BY_BOOT_UP:I = 0x1

.field static final INITIATED_BY_ENABLE_CEC:I = 0x0

.field static final INITIATED_BY_HOTPLUG:I = 0x4

.field static final INITIATED_BY_SCREEN_ON:I = 0x2

.field static final INITIATED_BY_WAKE_UP_MESSAGE:I = 0x3

.field static final PERMISSION:Ljava/lang/String; = "android.permission.HDMI_CEC"

.field static final STANDBY_SCREEN_OFF:I = 0x0

.field static final STANDBY_SHUTDOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HdmiControlService"


# instance fields
.field private final HONG_KONG:Ljava/util/Locale;

.field private final MACAU:Ljava/util/Locale;

.field private mActivePortId:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mAddressAllocated:Z

.field private mCecController:Lcom/android/server/hdmi/HdmiCecController;

.field private final mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

.field private final mDeviceEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

.field private mHdmiControlEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHotplugEventListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mIoThread:Landroid/os/HandlerThread;

.field private mLanguage:Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mLastInputMhl:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mLocalDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

.field private mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field private mMhlDevices:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMhlInputChangeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field private mPortInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/hdmi/UnmodifiableSparseArray",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerStatus:I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private mProhibitMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private final mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

.field private mStandbyMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field

.field private final mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTvInputManager:Landroid/media/tv/TvInputManager;

.field private final mVendorCommandListenerRecords:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeUpMessageReceived:Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/SelectRequestBuffer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hdmi/HdmiControlService;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/hdmi/HdmiControlService;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/hdmi/HdmiControlService;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "-value"    # Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "-value"    # Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    .prologue
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/hdmi/HdmiControlService;III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->disableHdmiControlService()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enforceAccessPermission()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "devices"    # Ljava/util/ArrayList;
    .param p2, "initiatedBy"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->notifyAddressAllocated(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "initiatedBy"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onInitializeCecComplete(I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "standbyAction"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandbyCompleted(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "standbyAction"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->getMhlDevicesLocked()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/hdmi/HdmiControlService;

    .prologue
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string/jumbo v2, "HK"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;

    .line 94
    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "zh"

    const-string/jumbo v2, "MO"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;

    .line 187
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Hdmi Control Io Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    .line 258
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 261
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 264
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 267
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 270
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    .line 297
    iput v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 300
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 360
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-direct {v0, p0, v5}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    .line 362
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 366
    const-string/jumbo v0, "ro.hdmi.device_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->getIntList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    .line 367
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 368
    return-void
.end method

.method private addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .prologue
    .line 1776
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 1778
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1784
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1786
    return-void

    .line 1779
    :catch_0
    move-exception v0

    .line 1780
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    return-void

    .line 1783
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    .prologue
    .line 2199
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    .line 2201
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2207
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2208
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2210
    return-void

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    return-void

    .line 2207
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1733
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 1735
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1741
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1746
    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 1761
    return-void

    .line 1736
    :catch_0
    move-exception v0

    .line 1737
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    return-void

    .line 1740
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addSystemAudioModeChangeListner(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1801
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 1804
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1810
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1812
    return-void

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-void

    .line 1809
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .param p2, "deviceType"    # I

    .prologue
    .line 2149
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    .line 2151
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2157
    :try_start_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2159
    return-void

    .line 2152
    :catch_0
    move-exception v0

    .line 2153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    return-void

    .line 2156
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private allocateLogicalAddress(Ljava/util/ArrayList;I)V
    .locals 11
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p1, "allocatingDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 588
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 589
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 590
    .local v3, "allocatedDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 591
    .local v5, "finished":[I
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 597
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 599
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "localDevice$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 600
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-object v8, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getType()I

    move-result v9

    .line 601
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getPreferredAddress()I

    move-result v10

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$1;

    move-object v1, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/hdmi/HdmiControlService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/ArrayList;Ljava/util/ArrayList;[II)V

    .line 600
    invoke-virtual {v8, v9, v10, v0}, Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    goto :goto_0

    .line 631
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    return-void
.end method

.method private announceHotplugEvent(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "connected"    # Z

    .prologue
    .line 1947
    new-instance v0, Landroid/hardware/hdmi/HdmiHotplugEvent;

    invoke-direct {v0, p1, p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;-><init>(IZ)V

    .line 1948
    .local v0, "event":Landroid/hardware/hdmi/HdmiHotplugEvent;
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1949
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1950
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1948
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 1953
    return-void
.end method

.method private assertRunOnServiceThread()V
    .locals 2

    .prologue
    .line 827
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_0
    return-void
.end method

.method private canGoToStandby()Z
    .locals 3

    .prologue
    .line 2088
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2089
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->canGoToStandby()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 2091
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private checkPollStrategy(I)I
    .locals 5
    .param p1, "pickStrategy"    # I

    .prologue
    .line 956
    and-int/lit8 v1, p1, 0x3

    .line 957
    .local v1, "strategy":I
    if-nez v1, :cond_0

    .line 958
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid poll strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    :cond_0
    const/high16 v2, 0x30000

    and-int v0, p1, v2

    .line 961
    .local v0, "iterationStrategy":I
    if-nez v0, :cond_1

    .line 962
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid iteration strategy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 964
    :cond_1
    or-int v2, v1, v0

    return v2
.end method

.method private clearLocalDevices()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2124
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-nez v0, :cond_0

    .line 2125
    return-void

    .line 2127
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLogicalAddress()V

    .line 2128
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->clearLocalDevices()V

    .line 2129
    return-void
.end method

.method private createDeviceInfo(III)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 7
    .param p1, "logicalAddress"    # I
    .param p2, "deviceType"    # I
    .param p3, "powerStatus"    # I

    .prologue
    .line 1008
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 1009
    .local v6, "displayName":Ljava/lang/String;
    new-instance v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v3

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    move-result v5

    move v1, p1

    move v4, p2

    .line 1009
    invoke-direct/range {v0 .. v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(IIIIILjava/lang/String;)V

    return-object v0
.end method

.method private disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .prologue
    .line 2112
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_0

    .line 2113
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2114
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    goto :goto_0

    .line 2118
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->clearAllLocalDevices()V

    .line 2119
    return-void
.end method

.method private disableHdmiControlService()V
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2301
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$6;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2315
    return-void
.end method

.method private dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/16 v3, 0xf

    const/4 v4, 0x0

    .line 894
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 895
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 896
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 897
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 898
    const/4 v2, 0x1

    return v2

    .line 902
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 903
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled cec command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    :cond_2
    return v4
.end method

.method private enableHdmiControlService()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2293
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2294
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2297
    return-void
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.HDMI_CEC"

    const-string/jumbo v2, "HdmiControlService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    return-void
.end method

.method private static getIntList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 373
    .local v4, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v4, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 374
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 376
    .local v1, "item":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "HdmiControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t parseInt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "item":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method private getMhlDevicesLocked()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    return-object v0
.end method

.method private initPortInfo()V
    .locals 19
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 654
    const/4 v9, 0x0

    .line 658
    .local v9, "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v2, :cond_0

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v9

    .line 661
    .end local v9    # "cecPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_0
    if-nez v9, :cond_1

    .line 662
    return-void

    .line 665
    :cond_1
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 666
    .local v15, "portInfoMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    .line 667
    .local v14, "portIdMap":Landroid/util/SparseIntArray;
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13}, Landroid/util/SparseArray;-><init>()V

    .line 668
    .local v13, "portDeviceMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    const/4 v2, 0x0

    array-length v3, v9

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v10, v9, v2

    .line 669
    .local v10, "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v4

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v5

    invoke-virtual {v14, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 670
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-virtual {v15, v4, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 671
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    new-instance v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v6

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;-><init>(II)V

    invoke-virtual {v13, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 673
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_2
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    invoke-direct {v2, v14}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 674
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v15}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 675
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-direct {v2, v13}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v11

    .line 678
    .local v11, "mhlPortInfo":[Landroid/hardware/hdmi/HdmiPortInfo;
    new-instance v12, Landroid/util/ArraySet;

    array-length v2, v11

    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 679
    .local v12, "mhlSupportedPorts":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    array-length v3, v11

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v10, v11, v2

    .line 680
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_4
    invoke-virtual {v12}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 688
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 689
    return-void

    .line 691
    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    array-length v2, v9

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 692
    .local v16, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/hdmi/HdmiPortInfo;>;"
    const/4 v2, 0x0

    array-length v0, v9

    move/from16 v18, v0

    move/from16 v17, v2

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    aget-object v10, v9, v17

    .line 693
    .restart local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 694
    new-instance v2, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    move-result v3

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    move-result v4

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v5

    .line 695
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    move-result v6

    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v8

    const/4 v7, 0x1

    .line 694
    invoke-direct/range {v2 .. v8}, Landroid/hardware/hdmi/HdmiPortInfo;-><init>(IIIZZZ)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :goto_3
    add-int/lit8 v2, v17, 0x1

    move/from16 v17, v2

    goto :goto_2

    .line 697
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 700
    .end local v10    # "info":Landroid/hardware/hdmi/HdmiPortInfo;
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    .line 701
    return-void
.end method

.method private initializeCec(I)V
    .locals 3
    .param p1, "initiatedBy"    # I

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 560
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 561
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeLocalDevices(I)V

    .line 563
    return-void
.end method

.method private initializeLocalDevices(I)V
    .locals 5
    .param p1, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 567
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 569
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 570
    .local v1, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "type$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 571
    .local v2, "type":I
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 572
    .local v0, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_0

    .line 573
    invoke-static {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 575
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 576
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 580
    .end local v0    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v2    # "type":I
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->clearLocalDevices()V

    .line 581
    invoke-direct {p0, v1, p1}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 582
    return-void
.end method

.method private invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .param p2, "result"    # I

    .prologue
    .line 1931
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    :goto_0
    return-void

    .line 1932
    :catch_0
    move-exception v0

    .line 1933
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private invokeHotplugEventListenerLocked(Landroid/hardware/hdmi/IHdmiHotplugEventListener;Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;
    .param p2, "event"    # Landroid/hardware/hdmi/HdmiHotplugEvent;

    .prologue
    .line 1958
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1962
    :goto_0
    return-void

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to report hotplug event:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/hardware/hdmi/HdmiHotplugEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;
    .param p2, "enabled"    # Z

    .prologue
    .line 1940
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->onStatusChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1944
    :goto_0
    return-void

    .line 1941
    :catch_0
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invoking callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyAddressAllocated(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "initiatedBy"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 636
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 637
    .local v1, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    .line 638
    .local v0, "address":I
    invoke-virtual {v1, v0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleAddressAllocated(II)V

    goto :goto_0

    .line 640
    .end local v0    # "address":I
    .end local v1    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSelectRequestBuffer(Lcom/android/server/hdmi/SelectRequestBuffer;)V

    .line 643
    :cond_1
    return-void
.end method

.method private onInitializeCecComplete(I)V
    .locals 5
    .param p1, "initiatedBy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 458
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 459
    iput v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 461
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 463
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 466
    :cond_1
    const/4 v0, -0x1

    .line 467
    .local v0, "reason":I
    packed-switch p1, :pswitch_data_0

    .line 479
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 480
    invoke-virtual {p0, v4, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 482
    :cond_2
    return-void

    .line 469
    :pswitch_0
    const/4 v0, 0x0

    .line 470
    goto :goto_0

    .line 472
    :pswitch_1
    const/4 v0, 0x1

    .line 473
    goto :goto_0

    .line 476
    :pswitch_2
    const/4 v0, 0x2

    .line 477
    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onLanguageChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2096
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2097
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 2101
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->setLanguage(Ljava/lang/String;)V

    .line 2103
    :cond_0
    return-void
.end method

.method private onStandby(I)V
    .locals 3
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 2062
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2063
    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2064
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2066
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2067
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2068
    return-void

    .line 2071
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllLocalDevices()Ljava/util/List;

    move-result-object v0

    .line 2072
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->disableDevices(Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 2085
    return-void
.end method

.method private onStandbyCompleted(I)V
    .locals 6
    .param p1, "standbyAction"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 2133
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2134
    const-string/jumbo v2, "HdmiControlService"

    const-string/jumbo v3, "onStandbyCompleted"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v2, v5, :cond_0

    .line 2137
    return-void

    .line 2139
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2140
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2141
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    iget-boolean v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    invoke-virtual {v0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onStandby(ZI)V

    goto :goto_0

    .line 2143
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_1
    iput-boolean v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2144
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v2, v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2145
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v3, 0x68

    invoke-virtual {v2, v3, v4}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2146
    return-void
.end method

.method private onWakeUp()V
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2044
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2045
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 2046
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_2

    .line 2047
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_1

    .line 2048
    const/4 v0, 0x2

    .line 2049
    .local v0, "startReason":I
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    if-eqz v1, :cond_0

    .line 2050
    const/4 v0, 0x3

    .line 2052
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 2058
    .end local v0    # "startReason":I
    :cond_1
    :goto_0
    return-void

    .line 2055
    :cond_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1711
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1712
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    .line 1713
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1715
    return-void

    .line 1717
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1718
    return-void
.end method

.method private playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1977
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    return-object v0
.end method

.method private queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1722
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1723
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    .line 1724
    .local v0, "source":Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    if-nez v0, :cond_0

    .line 1725
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Local playback device not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    .line 1727
    return-void

    .line 1729
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 1730
    return-void
.end method

.method private registerContentObserver()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 486
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x6

    new-array v2, v3, [Ljava/lang/String;

    .line 487
    const-string/jumbo v3, "hdmi_control_enabled"

    aput-object v3, v2, v4

    .line 488
    const-string/jumbo v3, "hdmi_control_auto_wakeup_enabled"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 489
    const-string/jumbo v3, "hdmi_control_auto_device_off_enabled"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 490
    const-string/jumbo v3, "hdmi_system_audio_control_enabled"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 491
    const-string/jumbo v3, "mhl_input_switching_enabled"

    const/4 v5, 0x4

    aput-object v3, v2, v5

    .line 492
    const-string/jumbo v3, "mhl_power_charge_enabled"

    const/4 v5, 0x5

    aput-object v3, v2, v5

    .line 494
    .local v2, "settings":[Ljava/lang/String;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v2, v3

    .line 495
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/hdmi/HdmiControlService;->mSettingsObserver:Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;

    .line 496
    const/4 v8, -0x1

    .line 495
    invoke-virtual {v0, v6, v4, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 494
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .prologue
    .line 1764
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1765
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;

    .line 1766
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;)Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 1767
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiHotplugEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1768
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHotplugEventListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$HotplugEventListenerRecord;
    :cond_1
    monitor-exit v3

    .line 1773
    return-void

    .line 1764
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .prologue
    .line 1815
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1817
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 1816
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1818
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1819
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1820
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    :cond_1
    monitor-exit v3

    .line 1825
    return-void

    .line 1815
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiRecordListener;

    .prologue
    .line 1869
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1870
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1872
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v2

    .line 1877
    return-void

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Listener already died."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1869
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/hdmi/IHdmiInputChangeListener;

    .prologue
    .line 1845
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1846
    :try_start_0
    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;-><init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1854
    return-void

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Listener already died"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 1851
    return-void

    .line 1845
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static toInt(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 545
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSafeMhlInput()V
    .locals 7
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1079
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 1080
    .local v4, "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getAllLocalDevices()Landroid/util/SparseArray;

    move-result-object v1

    .line 1081
    .local v1, "devices":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 1082
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    .line 1083
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    .line 1084
    .local v3, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    if-eqz v3, :cond_1

    .line 1085
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1086
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    .restart local v4    # "inputs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/hdmi/HdmiDeviceInfo;>;"
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1081
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1091
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v3    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :cond_2
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1092
    :try_start_0
    iput-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 1094
    return-void

    .line 1091
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6
.end method


# virtual methods
.method announceSystemAudioModeChange(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 998
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1000
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mSystemAudioModeChangeListenerRecords:Ljava/util/ArrayList;

    .line 999
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;

    .line 1001
    .local v0, "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeSystemAudioModeChangeLocked(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 998
    .end local v0    # "record":Lcom/android/server/hdmi/HdmiControlService$SystemAudioModeChangeListenerRecord;
    .end local v1    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 1004
    return-void
.end method

.method changeInputForMhl(IZ)V
    .locals 5
    .param p1, "portId"    # I
    .param p2, "contentOn"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2347
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2348
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 2349
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActivePortId()I

    move-result v2

    .line 2350
    .local v2, "lastInput":I
    :goto_0
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 2351
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    new-instance v4, Lcom/android/server/hdmi/HdmiControlService$7;

    invoke-direct {v4, p0, v2}, Lcom/android/server/hdmi/HdmiControlService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 2363
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePortId(I)V

    .line 2369
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 2370
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    .line 2372
    .local v1, "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 2373
    return-void

    .line 2349
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v2    # "lastInput":I
    :cond_2
    const/4 v2, -0x1

    .restart local v2    # "lastInput":I
    goto :goto_0

    .line 2371
    .restart local v0    # "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :cond_3
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortDeviceMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    sget-object v4, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .restart local v1    # "info":Landroid/hardware/hdmi/HdmiDeviceInfo;
    goto :goto_1
.end method

.method displayOsd(I)V
    .locals 4
    .param p1, "messageId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2391
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2392
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2393
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2394
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2395
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    .line 2394
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2396
    return-void
.end method

.method displayOsd(II)V
    .locals 4
    .param p1, "messageId"    # I
    .param p2, "extra"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2400
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2401
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2402
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2403
    const-string/jumbo v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2405
    const-string/jumbo v3, "android.permission.HDMI_CEC"

    .line 2404
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2406
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .locals 1
    .param p1, "portId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->enableAudioReturnChannel(IZ)V

    .line 890
    return-void
.end method

.method getAllLocalDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hdmi/HdmiCecLocalDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 968
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 969
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method getCecVersion()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVersion()I

    move-result v0

    return v0
.end method

.method getDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2
    .param p1, "logicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 781
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v0

    goto :goto_0
.end method

.method getDeviceInfoByPort(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 3
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 786
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 787
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 788
    .local v0, "info":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    .line 789
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v1

    return-object v1

    .line 791
    :cond_0
    return-object v2
.end method

.method getIoLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2107
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method getLastInputForMhl()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2335
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2336
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    return v0
.end method

.method getPhysicalAddress()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 2
    .param p1, "portId"    # I

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiPortInfo;

    return-object v0
.end method

.method getPortInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfo:Ljava/util/List;

    return-object v0
.end method

.method getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method getPowerStatus()I
    .locals 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1993
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1994
    iget v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    return v0
.end method

.method getServiceLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method getServiceLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getTvInputManager()Landroid/media/tv/TvInputManager;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    return-object v0
.end method

.method getVendorId()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->getVendorId()I

    move-result v0

    return v0
.end method

.method handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 871
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 872
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    if-nez v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecMessageBuffer:Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiControlService$CecMessageBuffer;->bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 874
    return v2

    .line 876
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 877
    .local v0, "errorCode":I
    if-eqz v0, :cond_2

    .line 880
    if-ne v0, v3, :cond_1

    .line 881
    invoke-virtual {p0, p1, v3}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 883
    :cond_1
    return v2

    .line 885
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->dispatchMessageToLocalDevice(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v1

    return v1
.end method

.method handleMhlBusModeChanged(II)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "busmode"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1043
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1044
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setBusMode(I)V

    .line 1050
    :goto_0
    return-void

    .line 1047
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for bus mode change[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1048
    const-string/jumbo v3, ", busmode:"

    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1048
    const-string/jumbo v3, "]"

    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlBusOvercurrent(IZ)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "on"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1054
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1055
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1056
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0, p2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onBusOvercurrentDetected(Z)V

    .line 1061
    :goto_0
    return-void

    .line 1059
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for bus overcurrent event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlDeviceStatusChanged(III)V
    .locals 4
    .param p1, "portId"    # I
    .param p2, "adopterId"    # I
    .param p3, "deviceId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1066
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1068
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0, p2, p3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->setDeviceStatusChange(II)V

    .line 1074
    :goto_0
    return-void

    .line 1071
    :cond_0
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No mhl device exists for device status event[portId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1072
    const-string/jumbo v3, ", adopterId:"

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1072
    const-string/jumbo v3, ", deviceId:"

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1072
    const-string/jumbo v3, "]"

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleMhlHotplugEvent(IZ)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 1016
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 1018
    if-eqz p2, :cond_1

    .line 1019
    new-instance v1, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 1020
    .local v1, "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->addLocalDevice(Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v2

    .line 1021
    .local v2, "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v2, :cond_0

    .line 1022
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1023
    const-string/jumbo v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Old device of port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is removed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1026
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    .line 1037
    .end local v1    # "newDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    .end local v2    # "oldDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 1038
    return-void

    .line 1028
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->removeLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    .line 1029
    .local v0, "device":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v0, :cond_2

    .line 1030
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->onDeviceRemoved()V

    .line 1031
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->getInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/hdmi/HdmiControlService;->invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 1032
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->updateSafeMhlInput()V

    goto :goto_0

    .line 1034
    :cond_2
    const-string/jumbo v3, "HdmiControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No device to remove:[portId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method invokeClearTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1917
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1920
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 1927
    return-void

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onClearTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1917
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeDeviceEventListeners(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 7
    .param p1, "device"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .param p2, "status"    # I

    .prologue
    .line 1789
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1790
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;)Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "HdmiControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to report device event:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1789
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 1798
    return-void
.end method

.method invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/hardware/hdmi/HdmiDeviceInfo;

    .prologue
    .line 1857
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1858
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1860
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mInputChangeListenerRecord:Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$InputChangeListenerRecord;)Landroid/hardware/hdmi/IHdmiInputChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiInputChangeListener;->onChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 1866
    return-void

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception thrown by IHdmiInputChangeListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1857
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeMhlVendorCommandListeners(III[B)V
    .locals 6
    .param p1, "portId"    # I
    .param p2, "offest"    # I
    .param p3, "length"    # I
    .param p4, "data"    # [B

    .prologue
    .line 2213
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2214
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;->onReceived(III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2217
    :catch_0
    move-exception v0

    .line 2218
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify MHL vendor command"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2213
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$HdmiMhlVendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v4

    .line 2222
    return-void
.end method

.method invokeOneTouchRecordResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1894
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1896
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 1902
    return-void

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onOneTouchRecordResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1893
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeRecordRequestListener(I)[B
    .locals 4
    .param p1, "recorderAddress"    # I

    .prologue
    .line 1880
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1883
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to start record."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1880
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeTimerRecordingResult(II)V
    .locals 4
    .param p1, "recorderAddress"    # I
    .param p2, "result"    # I

    .prologue
    .line 1905
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1906
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1908
    :try_start_1
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;)Landroid/hardware/hdmi/IHdmiRecordListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 1914
    return-void

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v3, "Failed to call onTimerRecordingResult."

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1905
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method invokeVendorCommandListenersOnControlStateChanged(ZI)Z
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 2182
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2183
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2184
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2186
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2188
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    :try_start_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onControlStateChanged(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify control-state-changed to vendor handler"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2182
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2193
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method invokeVendorCommandListenersOnReceived(III[BZ)Z
    .locals 6
    .param p1, "deviceType"    # I
    .param p2, "srcAddress"    # I
    .param p3, "destAddress"    # I
    .param p4, "params"    # [B
    .param p5, "hasVendorId"    # Z

    .prologue
    .line 2163
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2164
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 2165
    const/4 v3, 0x0

    monitor-exit v4

    return v3

    .line 2167
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService;->mVendorCommandListenerRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;

    .line 2168
    .local v1, "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get0(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2172
    :try_start_2
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;->-get1(Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/hardware/hdmi/IHdmiVendorCommandListener;->onReceived(II[BZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2173
    :catch_0
    move-exception v0

    .line 2174
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v3, "HdmiControlService"

    const-string/jumbo v5, "Failed to notify vendor command reception"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2163
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "record":Lcom/android/server/hdmi/HdmiControlService$VendorCommandListenerRecord;
    .end local v2    # "record$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 2177
    .restart local v2    # "record$iterator":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    monitor-exit v4

    return v3
.end method

.method isAddressAllocated()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    return v0
.end method

.method isConnected(I)Z
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 815
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->isConnected(I)Z

    move-result v0

    return v0
.end method

.method isConnectedToArcPort(I)Z
    .locals 2
    .param p1, "physicalAddress"    # I

    .prologue
    .line 805
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v0

    .line 806
    .local v0, "portId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 807
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/UnmodifiableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    move-result v1

    return v1

    .line 809
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method isControlEnabled()Z
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1987
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1986
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isMhlInputChangeEnabled()Z
    .locals 2

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2385
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2384
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isPowerOnOrTransient()Z
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1999
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2000
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eqz v2, :cond_0

    .line 2001
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 2000
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2001
    goto :goto_0
.end method

.method isPowerStandby()Z
    .locals 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2013
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2014
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPowerStandbyOrTransient()Z
    .locals 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 2006
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2007
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    if-eq v1, v0, :cond_0

    .line 2008
    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return v0

    .line 2008
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isProhibitMode()Z
    .locals 2

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2249
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 2248
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isTvDevice()Z
    .locals 2

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isTvDeviceEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isValidPortId(I)Z
    .locals 1
    .param p1, "portId"    # I

    .prologue
    .line 742
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isWakeUpMessageReceived()Z
    .locals 1

    .prologue
    .line 2039
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 865
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 866
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 867
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 429
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 431
    const-string/jumbo v1, "tv_input"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 432
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 434
    :cond_0
    return-void
.end method

.method onHotplug(IZ)V
    .locals 7
    .param p1, "portId"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 918
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    .line 919
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v3, "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "type$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 921
    .local v4, "type":I
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v6, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 922
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v2, :cond_0

    .line 923
    invoke-static {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 924
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->init()V

    .line 926
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 928
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :cond_1
    const/4 v6, 0x4

    invoke-direct {p0, v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 931
    .end local v3    # "localDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hdmi/HdmiCecLocalDevice;>;"
    .end local v5    # "type$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v6}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDeviceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 932
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onHotplug(IZ)V

    goto :goto_1

    .line 934
    .end local v0    # "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->announceHotplugEvent(IZ)V

    .line 935
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 386
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mIoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 387
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatus:I

    .line 388
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z

    .line 389
    const-string/jumbo v1, "hdmi_control_enabled"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    .line 390
    const-string/jumbo v1, "mhl_input_switching_enabled"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 392
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecController;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 393
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_3

    .line 394
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z

    if-eqz v1, :cond_0

    .line 395
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/HdmiControlService;->initializeCec(I)V

    .line 402
    :cond_0
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->create(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 403
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support MHL-control."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlDevices:Ljava/util/List;

    .line 408
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->initPortInfo()V

    .line 409
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    iput-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    .line 410
    const-string/jumbo v1, "hdmi_control"

    new-instance v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;

    invoke-direct {v2, p0, v4}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 412
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    if-eqz v1, :cond_2

    .line 414
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 415
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlBroadcastReceiver:Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 422
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->registerContentObserver()V

    .line 424
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 425
    return-void

    .line 398
    :cond_3
    const-string/jumbo v1, "HdmiControlService"

    const-string/jumbo v2, "Device does not support HDMI-CEC."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void
.end method

.method pathToPortId(I)I
    .locals 3
    .param p1, "path"    # I

    .prologue
    .line 737
    const v1, 0xf000

    and-int v0, p1, v1

    .line 738
    .local v0, "portAddress":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->get(II)I

    move-result v1

    return v1
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 951
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiControlService;->checkPollStrategy(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1, p4}, Lcom/android/server/hdmi/HdmiCecController;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    .line 953
    return-void
.end method

.method portIdToPath(I)I
    .locals 4
    .param p1, "portId"    # I

    .prologue
    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    .line 723
    .local v0, "portInfo":Landroid/hardware/hdmi/HdmiPortInfo;
    if-nez v0, :cond_0

    .line 724
    const-string/jumbo v1, "HdmiControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find the port info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const v1, 0xffff

    return v1

    .line 727
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    move-result v1

    return v1
.end method

.method readBooleanSetting(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    const/4 v1, 0x1

    .line 549
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 550
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v2

    invoke-static {v0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method registerTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 443
    return-void
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method runOnServiceThreadAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 824
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 855
    return-void
.end method

.method sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 3
    .param p1, "command"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 840
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 841
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMessageValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    if-nez v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid message type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    if-eqz p2, :cond_0

    .line 846
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    goto :goto_0
.end method

.method setActivePortId(I)V
    .locals 1
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2319
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2320
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 2324
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setLastInputForMhl(I)V

    .line 2325
    return-void
.end method

.method setAudioStatus(ZI)V
    .locals 4
    .param p1, "mute"    # Z
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x3

    .line 977
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 978
    :cond_0
    return-void

    .line 980
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 981
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v1

    .line 982
    .local v1, "muted":Z
    if-eqz p1, :cond_3

    .line 983
    if-nez v1, :cond_2

    .line 984
    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 995
    :cond_2
    :goto_0
    return-void

    .line 987
    :cond_3
    if-eqz v1, :cond_4

    .line 988
    const/4 v2, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 993
    :cond_4
    const/16 v2, 0x101

    .line 992
    invoke-virtual {v0, v3, p2, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method setCecOption(IZ)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "value"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2261
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2262
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->setOption(IZ)V

    .line 2263
    return-void
.end method

.method setControlEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2267
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2269
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2270
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiControlEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2273
    if-eqz p1, :cond_0

    .line 2274
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->enableHdmiControlService()V

    .line 2275
    return-void

    .line 2269
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2278
    :cond_0
    const/4 v0, 0x0

    .line 2279
    const/4 v1, 0x1

    .line 2278
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnControlStateChanged(ZI)Z

    .line 2282
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$5;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 2288
    return-void
.end method

.method setLastInputForMhl(I)V
    .locals 0
    .param p1, "portId"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2329
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2330
    iput p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLastInputMhl:I

    .line 2331
    return-void
.end method

.method setMhlInputChangeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2376
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    .line 2378
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2379
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2381
    return-void

    .line 2378
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setProhibitMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2255
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mProhibitMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2257
    return-void

    .line 2254
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method setStandbyMode(Z)V
    .locals 5
    .param p1, "isStandbyModeOn"    # Z

    .prologue
    const/4 v4, 0x0

    .line 2225
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2227
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2228
    const/4 v1, 0x5

    .line 2227
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2229
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2230
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->sendStandby(I)V

    .line 2245
    :cond_0
    :goto_0
    return-void

    .line 2232
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 2234
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2235
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$4;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0
.end method

.method standby()V
    .locals 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2028
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2029
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->canGoToStandby()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2030
    return-void

    .line 2032
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStandbyMessageReceived:Z

    .line 2033
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 2036
    return-void
.end method

.method public tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 2

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    return-object v0
.end method

.method unregisterTvInputCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/media/tv/TvInputManager$TvInputCallback;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    invoke-virtual {v0, p1}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 448
    return-void
.end method

.method wakeUp()V
    .locals 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    .line 2019
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 2020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 2021
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "android.server.hdmi:WAKE"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 2024
    return-void
.end method

.method writeBooleanSetting(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 555
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    return-void
.end method
