.class public Lcom/android/systemui/qs/QSBtFooter;
.super Landroid/widget/LinearLayout;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSBtFooter$1;,
        Lcom/android/systemui/qs/QSBtFooter$2;,
        Lcom/android/systemui/qs/QSBtFooter$3;,
        Lcom/android/systemui/qs/QSBtFooter$AudioItem;,
        Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/systemui/qs/QSBtFooter$AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchor:Landroid/view/View;

.field private mAudioLayout:Landroid/view/View;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioMode:I

.field private mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

.field private mAudioTitle:Landroid/widget/TextView;

.field private final mBluetoothCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

.field private final mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field private mCustomizing:Z

.field private mExpandFrac:F

.field private mHeadSetString:Ljava/lang/String;

.field private mIconMargin:I

.field private mInCall:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPopupOpened:Z

.field private mIsRegistered:Z

.field private mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mListening:Z

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mSelectedAudioDeviceType:I

.field private final mSelectedListener:Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;

.field private mSpeakerString:Ljava/lang/String;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextPadding:I

.field private mTopLine:Landroid/view/View;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSBtFooter;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSBtFooter;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSBtFooter;)Lcom/android/systemui/qs/QSSpinner;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/QSBtFooter;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/QSBtFooter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mIconMargin:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/QSBtFooter;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsPopupOpened:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/QSBtFooter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mSelectedAudioDeviceType:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/QSBtFooter;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mTextPadding:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSBtFooter;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mInCall:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/QSBtFooter;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsPopupOpened:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/QSBtFooter;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mSelectedAudioDeviceType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSBtFooter;I)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSBtFooter;->audioTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->dumpAudioDataInternal()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->dumpAudioData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->listAudioDevices()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->postUiUpdate()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibility()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    iput v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mSelectedAudioDeviceType:I

    .line 68
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioTitle:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAnchor:Landroid/view/View;

    .line 71
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mTopLine:Landroid/view/View;

    .line 72
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioLayout:Landroid/view/View;

    .line 74
    new-instance v0, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mSelectedListener:Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsPopupOpened:Z

    .line 77
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsRegistered:Z

    .line 79
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mHeadSetString:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mSpeakerString:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mIconMargin:I

    .line 82
    iput v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mTextPadding:I

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    .line 85
    iput v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioMode:I

    .line 86
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mInCall:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mListening:Z

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mExpandFrac:F

    .line 103
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mCustomizing:Z

    .line 605
    new-instance v0, Lcom/android/systemui/qs/QSBtFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSBtFooter$1;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 625
    new-instance v0, Lcom/android/systemui/qs/QSBtFooter$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSBtFooter$2;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    .line 645
    new-instance v0, Lcom/android/systemui/qs/QSBtFooter$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSBtFooter$3;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUpdateTask:Ljava/lang/Runnable;

    .line 108
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    .line 109
    const-class v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothController;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 110
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    return-void
.end method

.method private audioTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 489
    packed-switch p1, :pswitch_data_0

    .line 500
    const-string/jumbo v0, ""

    .line 502
    .local v0, "typeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 491
    .end local v0    # "typeName":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "AUDIO_TYPE_PHONE"

    .restart local v0    # "typeName":Ljava/lang/String;
    goto :goto_0

    .line 494
    .end local v0    # "typeName":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "AUDIO_TYPE_HEADSET"

    .restart local v0    # "typeName":Ljava/lang/String;
    goto :goto_0

    .line 497
    .end local v0    # "typeName":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "AUDIO_TYPE_BLUETOOTH"

    .restart local v0    # "typeName":Ljava/lang/String;
    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dumpAudioData()V
    .locals 1

    .prologue
    .line 514
    new-instance v0, Lcom/android/systemui/qs/QSBtFooter$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSBtFooter$8;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBtFooter$8;->start()V

    .line 519
    return-void
.end method

.method private dumpAudioDataInternal()V
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 525
    .local v0, "device":I
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_VOICE_CALL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 527
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_SYSTEM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 529
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_RING is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 531
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for Stream Music is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 533
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_ALARM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 535
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_NOTIFICATION is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 537
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_BLUETOOTH_SCO is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 539
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_SYSTEM_ENFORCED is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 541
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_DTMF is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 543
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_TTS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v0

    .line 545
    const-string/jumbo v1, "QSBtFooter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selected audio type for STREAM_ACCESSIBILITY is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method private listAudioDevices()V
    .locals 11

    .prologue
    const v10, 0x7f080219

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 337
    iget-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v2

    .line 338
    .local v2, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    if-eqz v2, :cond_0

    .line 339
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 340
    .local v0, "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v5

    .line 340
    if-eqz v5, :cond_2

    .line 342
    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 349
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_0
    sget-boolean v5, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v6, "QSBtFooter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "listAudioDevices device: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 350
    iget-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 349
    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBtFooter;->shouldShowBtFooter()Z

    move-result v5

    if-nez v5, :cond_4

    .line 353
    const-string/jumbo v5, "QSBtFooter"

    const-string/jumbo v6, "listAudioDevices BT audio not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibility()V

    .line 355
    return-void

    .line 345
    .restart local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .restart local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_2
    iput-object v6, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    goto :goto_0

    .line 350
    .end local v0    # "device":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_3
    const-string/jumbo v5, "null"

    goto :goto_1

    .line 359
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/qs/QSBtFooter$AudioItem;>;"
    iget-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 363
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mHeadSetString:Ljava/lang/String;

    .line 364
    .local v4, "label":Ljava/lang/String;
    new-instance v5, Lcom/android/systemui/qs/QSBtFooter$AudioItem;

    invoke-direct {v5, p0, v4, v10, v8}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;-><init>(Lcom/android/systemui/qs/QSBtFooter;Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v5, :cond_6

    .line 381
    new-instance v5, Lcom/android/systemui/qs/QSBtFooter$AudioItem;

    iget-object v6, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f080218

    const/4 v8, 0x2

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;-><init>(Lcom/android/systemui/qs/QSBtFooter;Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v5, Lcom/android/systemui/qs/QSBtFooter$6;

    iget-object v6, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0034

    invoke-direct {v5, p0, v6, v7, v3}, Lcom/android/systemui/qs/QSBtFooter$6;-><init>(Lcom/android/systemui/qs/QSBtFooter;Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 430
    new-instance v5, Lcom/android/systemui/qs/QSBtFooter$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSBtFooter$7;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    new-array v6, v9, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSBtFooter$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 484
    return-void

    .line 366
    .end local v4    # "label":Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mSpeakerString:Ljava/lang/String;

    .line 367
    .restart local v4    # "label":Ljava/lang/String;
    new-instance v5, Lcom/android/systemui/qs/QSBtFooter$AudioItem;

    invoke-direct {v5, p0, v4, v10, v9}, Lcom/android/systemui/qs/QSBtFooter$AudioItem;-><init>(Lcom/android/systemui/qs/QSBtFooter;Ljava/lang/String;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 384
    :cond_6
    const-string/jumbo v5, "QSBtFooter"

    const-string/jumbo v6, "bluetooth device name is null or empty"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibility()V

    .line 387
    return-void
.end method

.method private postUiUpdate()V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 639
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mUpdateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 643
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateThemeColor()V
    .locals 6

    .prologue
    .line 257
    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    invoke-static {v4}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v3

    .line 258
    .local v3, "textColor":I
    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->QS_MENU_BACKGROUND:I

    invoke-static {v4}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    .line 259
    .local v0, "backgroundColor":I
    sget v4, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    invoke-static {v4}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v2

    .line 261
    .local v2, "lineColor":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 265
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mTopLine:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 268
    return-void
.end method

.method private updateVisibility()V
    .locals 4

    .prologue
    .line 192
    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mExpandFrac:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mExpandFrac:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibilityInternal()V

    .line 202
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/QSBtFooter$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSBtFooter$5;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 200
    const-wide/16 v2, 0xc8

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private updateVisibilityInternal()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBtFooter;->shouldShowBtFooter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mTopLine:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBtFooter;->shouldShowBtFooter()Z

    move-result v0

    .line 217
    .local v0, "show":Z
    if-nez v0, :cond_2

    .line 219
    const/16 v1, 0x8

    .line 224
    .local v1, "visibility":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSBtFooter;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 225
    const-string/jumbo v2, "QSBtFooter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVisibility shouldShowBtFooter :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " visibility:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSBtFooter;->setVisibility(I)V

    .line 230
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QS;->notifyBtFooterChanged(I)V

    .line 237
    :cond_0
    return-void

    .line 210
    .end local v0    # "show":Z
    .end local v1    # "visibility":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mTopLine:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 221
    .restart local v0    # "show":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "visibility":I
    goto :goto_1
.end method


# virtual methods
.method public notifyCustomizeChanged(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mCustomizing:Z

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibility()V

    .line 510
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v1, 0x7f070252

    .line 272
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mIconMargin:I

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mTextPadding:I

    .line 275
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const v3, 0x7f070252

    .line 115
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 116
    const v0, 0x7f0a0070

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioTitle:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0a0254

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAnchor:Landroid/view/View;

    .line 118
    const v0, 0x7f0a031b

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mTopLine:Landroid/view/View;

    .line 119
    const v0, 0x7f0a0048

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioLayout:Landroid/view/View;

    .line 124
    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSSpinner;

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSpinner;->setDropDownVerticalOffset(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    const v1, 0x7f0803f3

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSpinner;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    new-instance v1, Lcom/android/systemui/qs/QSBtFooter$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSBtFooter$4;-><init>(Lcom/android/systemui/qs/QSBtFooter;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSpinner;->setSpinnerEventsListener(Lcom/android/systemui/qs/QSSpinner$OnSpinnerEventsListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    iget-object v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mAnchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSSpinner;->setPopupAnchor(Landroid/view/View;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110443

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mHeadSetString:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110445

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mSpeakerString:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mIconMargin:I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mTextPadding:I

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateThemeColor()V

    .line 151
    return-void
.end method

.method public setExpansion(FF)V
    .locals 2
    .param p1, "frac"    # F
    .param p2, "headerTranslation"    # F

    .prologue
    const/4 v1, 0x0

    .line 164
    iput p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mExpandFrac:F

    .line 167
    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSBtFooter;->setListening(Z)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSpinner;->hasBeenOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_2

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSpinner;->getPopupWindow()Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSSpinner;->performClosedEvent()V

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->updateVisibility()V

    .line 188
    return-void

    .line 181
    :cond_2
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 7
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 278
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mListening:Z

    if-ne v4, p1, :cond_0

    return-void

    .line 279
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mListening:Z

    .line 280
    sget-boolean v4, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "QSBtFooter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setListening changed listen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    if-eqz p1, :cond_6

    .line 283
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mInCall:Z

    .line 292
    sget-boolean v2, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "QSBtFooter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setListening mInCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSBtFooter;->mInCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->postUiUpdate()V

    .line 298
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mSelectedListener:Lcom/android/systemui/qs/QSBtFooter$AudioOnItemSelectedListener;

    invoke-virtual {v2, v4}, Lcom/android/systemui/qs/QSSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 299
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsRegistered:Z

    if-nez v2, :cond_4

    .line 301
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsRegistered:Z

    .line 311
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->addCallback(Ljava/lang/Object;)V

    .line 323
    :goto_1
    sget-boolean v2, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/qs/QSBtFooter;->dumpAudioData()V

    .line 324
    :cond_5
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Exception;
    iput v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioMode:I

    .line 287
    const-string/jumbo v4, "QSBtFooter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AudioManager getMode error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioSelector:Lcom/android/systemui/qs/QSSpinner;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 317
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsRegistered:Z

    if-eqz v3, :cond_7

    .line 318
    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/qs/QSBtFooter;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mIsRegistered:Z

    .line 321
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    iget-object v3, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothCallback:Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->removeCallback(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0
    .param p1, "qs"    # Lcom/android/systemui/plugins/qs/QS;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 156
    return-void
.end method

.method public shouldShowBtFooter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    iget v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mAudioMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 241
    :goto_0
    if-eqz v0, :cond_2

    .line 242
    return v1

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSBtFooter;->mInCall:Z

    .local v0, "inCall":Z
    goto :goto_0

    .line 248
    .end local v0    # "inCall":Z
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/BluetoothController;->isBluetoothConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter;->mLastConnectedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v2, :cond_3

    .line 251
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSBtFooter;->mCustomizing:Z

    xor-int/lit8 v1, v1, 0x1

    .line 248
    :cond_3
    return v1
.end method
