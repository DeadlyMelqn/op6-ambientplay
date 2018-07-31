.class public Lcom/android/systemui/classifier/FalsingManager;
.super Ljava/lang/Object;
.source "FalsingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingManager$1;
    }
.end annotation


# static fields
.field private static final CLASSIFIER_SENSORS:[I

.field private static final COLLECTOR_SENSORS:[I

.field private static sInstance:Lcom/android/systemui/classifier/FalsingManager;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBouncerOn:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataCollector:Lcom/android/systemui/analytics/DataCollector;

.field private mEnforceBouncer:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

.field private mPendingWtf:Ljava/lang/Runnable;

.field private mScreenOn:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSessionActive:Z

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mShowingAod:Z

.field private mState:I

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/classifier/FalsingManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/classifier/FalsingManager;

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 51
    new-array v0, v3, [I

    .line 52
    const/4 v1, 0x0

    aput v4, v0, v1

    .line 51
    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    .line 57
    const/4 v0, 0x4

    .line 59
    const/4 v1, 0x5

    .line 60
    const/16 v2, 0xb

    .line 55
    filled-new-array {v3, v0, v4, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    .line 74
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 75
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 76
    iput-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 77
    iput v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 82
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager$1;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/classifier/FalsingManager$1;-><init>(Lcom/android/systemui/classifier/FalsingManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    .line 91
    const-class v0, Lcom/android/systemui/util/AsyncSensorManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 92
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/analytics/DataCollector;->getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    .line 95
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 96
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 98
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "falsing_manager_enforce_bouncer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 101
    const/4 v3, -0x1

    .line 98
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateConfiguration()V

    .line 104
    return-void
.end method

.method private clearPendingWtf()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iput-object v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 244
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    .line 110
    :cond_0
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->sInstance:Lcom/android/systemui/classifier/FalsingManager;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onSessionStart()V
    .locals 3

    .prologue
    .line 157
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "onSessionStart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "classifierEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 164
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->CLASSIFIER_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabledFull()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    sget-object v0, Lcom/android/systemui/classifier/FalsingManager;->COLLECTOR_SENSORS:[I

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->registerSensors([I)V

    .line 170
    :cond_2
    return-void
.end method

.method private registerSensors([I)V
    .locals 6
    .param p1, "sensors"    # [I

    .prologue
    .line 173
    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p1, v2

    .line 174
    .local v1, "sensorType":I
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v4, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 175
    .local v0, "s":Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 178
    iget-object v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v5, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ$1;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 173
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "s":Landroid/hardware/Sensor;
    .end local v1    # "sensorType":I
    :cond_1
    return-void
.end method

.method private sessionEntrypoint()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->onSessionStart()V

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sessionExitpoint(Z)V
    .locals 2
    .param p1, "force"    # Z

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    .line 142
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 146
    :cond_1
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateConfiguration()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    const-string/jumbo v2, "falsing_manager_enforce_bouncer"

    .line 114
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    .line 116
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 456
    const-string/jumbo v0, "FALSING MANAGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, "classifierEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 458
    const-string/jumbo v0, "mSessionActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 459
    const-string/jumbo v0, "mBouncerOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 460
    const-string/jumbo v0, "mState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const-string/jumbo v0, "mScreenOn="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 462
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 463
    return-void

    :cond_0
    move v0, v2

    .line 457
    goto :goto_0

    :cond_1
    move v0, v2

    .line 458
    goto :goto_1

    :cond_2
    move v0, v2

    .line 459
    goto :goto_2

    :cond_3
    move v1, v2

    .line 461
    goto :goto_3
.end method

.method public isClassiferEnabled()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFalseTouch()Z
    .locals 8

    .prologue
    .line 197
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 203
    .local v1, "enabled":I
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 204
    .local v2, "screenOn":I
    :goto_1
    iget v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "state":Ljava/lang/String;
    new-instance v5, Ljava/lang/Throwable;

    const-string/jumbo v0, "here"

    invoke-direct {v5, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 206
    .local v5, "here":Ljava/lang/Throwable;
    const-string/jumbo v0, "isFalseTouch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    const-string/jumbo v6, "Session is not active, yet there\'s a query for a false touch."

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    const-string/jumbo v6, " enabled="

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 209
    const-string/jumbo v6, " mScreenOn="

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 210
    const-string/jumbo v6, " mState="

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 211
    const-string/jumbo v6, ". Escalating to WTF if screen does not turn on soon."

    .line 206
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/classifier/FalsingLog;->wLogcat(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ$2;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/classifier/-$Lambda$cbp1GoQjSW3ocYuW3wmIobRpooQ$2;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/classifier/FalsingManager;->mPendingWtf:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    .end local v1    # "enabled":I
    .end local v2    # "screenOn":I
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "here":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "enabled":I
    goto :goto_0

    .line 203
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "screenOn":I
    goto :goto_1

    .line 236
    .end local v1    # "enabled":I
    .end local v2    # "screenOn":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->isFalseTouch()Z

    move-result v0

    return v0
.end method

.method public isReportingEnabled()Z
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isReportingEnabled()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_classifier_FalsingManager_5216()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_classifier_FalsingManager_6313(Landroid/hardware/Sensor;)V
    .locals 2
    .param p1, "s"    # Landroid/hardware/Sensor;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_classifier_FalsingManager_8298(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "enabled"    # I
    .param p2, "screenOn"    # I
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "here"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x2f

    .line 218
    const-string/jumbo v3, "isFalseTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    const-string/jumbo v4, "Session did not become active after query for a false touch."

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string/jumbo v4, " enabled="

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 218
    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string/jumbo v4, " mScreenOn="

    .line 218
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 223
    iget-boolean v4, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v4, :cond_1

    .line 218
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    const-string/jumbo v1, " mState="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 225
    iget v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 226
    const-string/jumbo v1, ". Look for warnings ~1000ms earlier to see root cause."

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p4}, Lcom/android/systemui/classifier/FalsingLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    move v0, v2

    .line 221
    goto :goto_0

    :cond_1
    move v1, v2

    .line 223
    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 255
    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingAborted()V

    .line 434
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 2
    .param p1, "rightCorner"    # Z

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 422
    const-string/jumbo v0, "onAffordanceSwipingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_0
    if-eqz p1, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 429
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onAffordanceSwipingStarted(Z)V

    .line 430
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    goto :goto_0
.end method

.method public onBouncerHidden()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 334
    const-string/jumbo v2, "onBouncerHidden"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    const-string/jumbo v3, "from="

    .line 334
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 334
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_1

    .line 339
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 340
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerHidden()V

    .line 342
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 335
    goto :goto_0
.end method

.method public onBouncerShown()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 321
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v2, "onBouncerShown"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    const-string/jumbo v3, "from="

    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 323
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 322
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    if-nez v0, :cond_1

    .line 327
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onBouncerShown()V

    .line 330
    :cond_1
    return-void

    .line 323
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraHintStarted()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraHintStarted()V

    .line 442
    return-void
.end method

.method public onCameraOn()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onCameraOn()V

    .line 414
    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceHintStarted()V

    .line 446
    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onLeftAffordanceOn()V

    .line 418
    return-void
.end method

.method public onNotificationActive()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationActive()V

    .line 370
    return-void
.end method

.method public onNotificationDismissed()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDismissed()V

    .line 398
    return-void
.end method

.method public onNotificationDoubleTap(ZFF)V
    .locals 3
    .param p1, "accepted"    # Z
    .param p2, "dx"    # F
    .param p3, "dy"    # F

    .prologue
    .line 373
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 374
    const-string/jumbo v0, "onNotificationDoubleTap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accepted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string/jumbo v2, " dx="

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string/jumbo v2, " dy="

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string/jumbo v2, " (px)"

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificationDoubleTap()V

    .line 378
    return-void
.end method

.method public onNotificatonStartDismissing()V
    .locals 2

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "onNotificatonStartDismissing"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDismissing()V

    .line 406
    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .locals 2

    .prologue
    .line 385
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 386
    const-string/jumbo v0, "onNotificatonStartDraggingDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStartDraggingDown()V

    .line 390
    return-void
.end method

.method public onNotificatonStopDismissing()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDismissing()V

    .line 410
    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onNotificatonStopDraggingDown()V

    .line 394
    return-void
.end method

.method public onQsDown()V
    .locals 2

    .prologue
    .line 345
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 346
    const-string/jumbo v0, "onQsDown"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onQsDown()V

    .line 350
    return-void
.end method

.method public onScreenOff()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 303
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 304
    const-string/jumbo v2, "onScreenOff"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    const-string/jumbo v3, "from="

    .line 304
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 304
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOff()V

    .line 309
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 310
    invoke-direct {p0, v1}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    .line 311
    return-void

    :cond_1
    move v0, v1

    .line 305
    goto :goto_0
.end method

.method public onScreenOnFromTouch()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 291
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 292
    const-string/jumbo v2, "onScreenOnFromTouch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    const-string/jumbo v3, "from="

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 292
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenOnFromTouch()V

    .line 300
    :cond_1
    return-void

    .line 293
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurningOn()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 278
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 279
    const-string/jumbo v2, "onScreenTurningOn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    const-string/jumbo v3, "from="

    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 279
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->clearPendingWtf()V

    .line 284
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingManager;->mScreenOn:Z

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onScreenTurningOn()V

    .line 288
    :cond_1
    return-void

    .line 280
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 249
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 250
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSucccessfulUnlock()V
    .locals 2

    .prologue
    .line 314
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 315
    const-string/jumbo v0, "onSucccessfulUnlock"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onSucccessfulUnlock()V

    .line 318
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mSessionActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mBouncerOn:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/analytics/DataCollector;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 453
    :cond_0
    return-void
.end method

.method public onTrackingStarted()V
    .locals 2

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "onTrackingStarted"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mHumanInteractionClassifier:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->setType(I)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStarted()V

    .line 362
    return-void
.end method

.method public onTrackingStopped()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onTrackingStopped()V

    .line 366
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->onUnlockHintStarted()V

    .line 438
    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->reportRejectedTouch()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 469
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationExpanded()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0}, Lcom/android/systemui/analytics/DataCollector;->setNotificationExpanded()V

    .line 382
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mDataCollector:Lcom/android/systemui/analytics/DataCollector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->setQsExpanded(Z)V

    .line 354
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0
    .param p1, "showingAod"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mShowingAod:Z

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 264
    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 267
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingLog;->ENABLED:Z

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v0, "setStatusBarState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    const-string/jumbo v2, "from="

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    iget v2, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    const-string/jumbo v2, " to="

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-static {p1}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v2

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    iput p1, p0, Lcom/android/systemui/classifier/FalsingManager;->mState:I

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManager;->updateSessionActive()V

    .line 275
    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingManager;->mEnforceBouncer:Z

    return v0
.end method

.method public updateSessionActive()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingManager;->sessionEntrypoint()Z

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingManager;->sessionExitpoint(Z)V

    goto :goto_0
.end method
