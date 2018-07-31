.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field public static final FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mIsConnecting:Z

.field private mIsDestroyed:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static synthetic -get0(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "-this"    # Landroid/app/UiAutomation;

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/app/UiAutomation;

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1
    .param p0, "-this"    # Landroid/app/UiAutomation;

    .prologue
    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/UiAutomation;)Z
    .locals 1
    .param p0, "-this"    # Landroid/app/UiAutomation;

    .prologue
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/UiAutomation;I)I
    .locals 0
    .param p0, "-this"    # Landroid/app/UiAutomation;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic -set1(Landroid/app/UiAutomation;J)J
    .locals 1
    .param p0, "-this"    # Landroid/app/UiAutomation;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "connection"    # Landroid/app/IUiAutomationConnection;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 186
    if-nez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    if-nez p2, :cond_1

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 193
    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 194
    return-void
.end method

.method private static getDegreesForRotation(I)F
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1069
    packed-switch p0, :pswitch_data_0

    .line 1079
    const/4 v0, 0x0

    return v0

    .line 1071
    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    .line 1074
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    .line 1077
    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    .prologue
    .line 1085
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    .prologue
    .line 1089
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1090
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1092
    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    .prologue
    .line 1095
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1098
    :cond_0
    return-void
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 3

    .prologue
    .line 862
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 870
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 874
    :goto_0
    return-void

    .line 862
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 871
    :catch_0
    move-exception v0

    .line 872
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 3
    .param p1, "windowId"    # I

    .prologue
    .line 792
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 793
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 800
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    .line 792
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 801
    :catch_0
    move-exception v0

    .line 802
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    const/4 v1, 0x0

    return v1
.end method

.method public connect()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->connect(I)V

    .line 203
    return-void
.end method

.method public connect(I)V
    .locals 12
    .param p1, "flags"    # I

    .prologue
    .line 213
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 214
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    .line 215
    iget-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    monitor-exit v9

    .line 216
    return-void

    .line 218
    :cond_0
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 223
    :try_start_2
    iget-object v8, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v9, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v8, v9, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 224
    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 229
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 230
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v6

    .line 233
    .local v6, "startTimeMillis":J
    :goto_0
    :try_start_4
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    .line 248
    const/4 v8, 0x0

    :try_start_5
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v9

    .line 251
    return-void

    .line 213
    .end local v6    # "startTimeMillis":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "re":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Error while connecting UiAutomation"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 236
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v6    # "startTimeMillis":J
    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    .line 237
    .local v0, "elapsedTimeMillis":J
    const-wide/16 v10, 0x1388

    sub-long v4, v10, v0

    .line 238
    .local v4, "remainingTimeMillis":J
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gtz v8, :cond_2

    .line 239
    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Error while connecting UiAutomation"

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 247
    .end local v0    # "elapsedTimeMillis":J
    .end local v4    # "remainingTimeMillis":J
    :catchall_1
    move-exception v8

    .line 248
    const/4 v10, 0x0

    :try_start_7
    iput-boolean v10, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    .line 247
    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 229
    .end local v6    # "startTimeMillis":J
    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    .line 242
    .restart local v0    # "elapsedTimeMillis":J
    .restart local v4    # "remainingTimeMillis":J
    .restart local v6    # "startTimeMillis":J
    :cond_2
    :try_start_8
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 243
    :catch_1
    move-exception v2

    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    .line 332
    return-void
.end method

.method public disconnect()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 273
    const-string/jumbo v3, "Cannot call disconnect() while connecting!"

    .line 272
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 275
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 276
    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 280
    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 284
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error while disconnecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 17
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "filter"    # Landroid/app/UiAutomation$AccessibilityEventFilter;
    .param p3, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 567
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 568
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 570
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 578
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 580
    .local v6, "executionStartTimeMillis":J
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 585
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 587
    .local v12, "startTimeMillis":J
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v8, "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 589
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 590
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v14

    .line 593
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 594
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    .line 596
    .local v4, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v14

    cmp-long v9, v14, v6

    if-ltz v9, :cond_0

    .line 599
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_1

    .line 622
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 623
    const/4 v9, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 625
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v14

    .line 600
    return-object v4

    .line 566
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v6    # "executionStartTimeMillis":J
    .end local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v12    # "startTimeMillis":J
    :catchall_0
    move-exception v9

    monitor-exit v14

    throw v9

    .line 588
    .restart local v6    # "executionStartTimeMillis":J
    .restart local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v12    # "startTimeMillis":J
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v14

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 621
    .end local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v12    # "startTimeMillis":J
    :catchall_2
    move-exception v9

    .line 622
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 623
    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 625
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    monitor-exit v14

    .line 621
    throw v9

    .line 622
    .restart local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .restart local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v12    # "startTimeMillis":J
    :catchall_3
    move-exception v9

    monitor-exit v14

    throw v9

    .line 602
    :cond_1
    :try_start_7
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    .line 605
    .end local v4    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v12

    .line 606
    .local v2, "elapsedTimeMillis":J
    sub-long v10, p3, v2

    .line 607
    .local v10, "remainingTimeMillis":J
    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-gtz v9, :cond_3

    .line 608
    new-instance v9, Ljava/util/concurrent/TimeoutException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected event not received within: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 609
    const-string/jumbo v15, " ms."

    .line 608
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 611
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 612
    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v9

    if-eqz v9, :cond_4

    .line 614
    :try_start_9
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_4
    :goto_2
    :try_start_a
    monitor-exit v14

    goto/16 :goto_0

    .line 611
    :catchall_4
    move-exception v9

    monitor-exit v14

    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 622
    .end local v2    # "elapsedTimeMillis":J
    .end local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .end local v10    # "remainingTimeMillis":J
    .end local v12    # "startTimeMillis":J
    :catchall_5
    move-exception v9

    monitor-exit v14

    throw v9

    .line 615
    .restart local v2    # "elapsedTimeMillis":J
    .restart local v8    # "localEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityEvent;>;"
    .restart local v10    # "remainingTimeMillis":J
    .restart local v12    # "startTimeMillis":J
    :catch_0
    move-exception v5

    .local v5, "ie":Ljava/lang/InterruptedException;
    goto :goto_2
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 990
    iget-object v5, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 991
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 994
    const/4 v4, 0x0

    .line 995
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v3, 0x0

    .line 998
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 999
    .local v1, "pipe":[Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    aget-object v4, v1, v5

    .line 1000
    .local v4, "source":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x1

    aget-object v3, v1, v5

    .line 1003
    .local v3, "sink":Landroid/os/ParcelFileDescriptor;
    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v3, v6}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1009
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1012
    .end local v1    # "pipe":[Landroid/os/ParcelFileDescriptor;
    .end local v3    # "sink":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "source":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v4

    .line 990
    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error executing shell command!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1009
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 1004
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1005
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error executing shell command!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1009
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 1008
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 1009
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1008
    throw v5
.end method

.method public executeShellCommandRw(Ljava/lang/String;)[Landroid/os/ParcelFileDescriptor;
    .locals 13
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1032
    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1033
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 1036
    const/4 v7, 0x0

    .line 1037
    .local v7, "source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v5, 0x0

    .line 1039
    .local v5, "sink_read":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .line 1040
    .local v8, "source_write":Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .line 1043
    .local v6, "sink_write":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1044
    .local v1, "pipe_read":[Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    aget-object v7, v1, v9

    .line 1045
    .local v7, "source_read":Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x1

    aget-object v5, v1, v9

    .line 1047
    .local v5, "sink_read":Landroid/os/ParcelFileDescriptor;
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1048
    .local v2, "pipe_write":[Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x0

    aget-object v8, v2, v9

    .line 1049
    .local v8, "source_write":Landroid/os/ParcelFileDescriptor;
    const/4 v9, 0x1

    aget-object v6, v2, v9

    .line 1052
    .local v6, "sink_write":Landroid/os/ParcelFileDescriptor;
    iget-object v9, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v9, p1, v5, v8}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1058
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1059
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1062
    .end local v1    # "pipe_read":[Landroid/os/ParcelFileDescriptor;
    .end local v2    # "pipe_write":[Landroid/os/ParcelFileDescriptor;
    .end local v5    # "sink_read":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "sink_write":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "source_read":Landroid/os/ParcelFileDescriptor;
    .end local v8    # "source_write":Landroid/os/ParcelFileDescriptor;
    :goto_0
    const/4 v9, 0x2

    new-array v4, v9, [Landroid/os/ParcelFileDescriptor;

    .line 1063
    .local v4, "result":[Landroid/os/ParcelFileDescriptor;
    aput-object v7, v4, v11

    .line 1064
    aput-object v6, v4, v12

    .line 1065
    return-object v4

    .line 1032
    .end local v4    # "result":[Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v10

    monitor-exit v9

    throw v10

    .line 1055
    :catch_0
    move-exception v3

    .line 1056
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_2
    sget-object v9, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error executing shell command!"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1058
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1059
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 1053
    .end local v3    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1054
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v9, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v10, "Error executing shell command!"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1058
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1059
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    .line 1057
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 1058
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1059
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1057
    throw v9
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    .prologue
    .line 383
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 384
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x2

    move v6, p1

    .line 383
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionId()I
    .locals 2

    .prologue
    .line 294
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 296
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    .prologue
    .line 474
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 475
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 476
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "connectionId":I
    monitor-exit v2

    .line 479
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    .line 474
    .end local v0    # "connectionId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 398
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 399
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 400
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 401
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 400
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    .line 404
    if-eqz v0, :cond_0

    .line 406
    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    .line 398
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 407
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v5
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    .prologue
    .line 904
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 905
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 912
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    .line 904
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 916
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 3
    .param p1, "windowId"    # I

    .prologue
    .line 837
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 838
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 845
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    .line 837
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 846
    :catch_0
    move-exception v0

    .line 847
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 459
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 460
    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "connectionId":I
    monitor-exit v2

    .line 463
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 458
    .end local v0    # "connectionId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 930
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 938
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 939
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 938
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 941
    const/4 v1, 0x1

    return v1

    .line 930
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 942
    :catch_0
    move-exception v0

    .line 943
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error granting runtime permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 945
    const/4 v1, 0x0

    return v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "sync"    # Z

    .prologue
    .line 493
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 494
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 501
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    .line 493
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    const/4 v1, 0x0

    return v1
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public final performGlobalAction(I)Z
    .locals 5
    .param p1, "action"    # I

    .prologue
    .line 349
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 350
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 351
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 352
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 351
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    .line 355
    if-eqz v0, :cond_0

    .line 357
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    .line 349
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 358
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 359
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 362
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 959
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 960
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 967
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 968
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 967
    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 970
    const/4 v1, 0x1

    return v1

    .line 959
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error revoking runtime permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 974
    const/4 v1, 0x0

    return v1
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/app/UiAutomation$OnAccessibilityEventListener;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 320
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setRotation(I)Z
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 525
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 528
    packed-switch p1, :pswitch_data_0

    .line 544
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 537
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 538
    const/4 v1, 0x1

    return v1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    const/4 v1, 0x0

    return v1

    .line 528
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 767
    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 768
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 771
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 775
    :goto_0
    return-void

    .line 767
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 424
    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 425
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 426
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    .line 427
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 428
    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    .line 427
    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    monitor-exit v3

    .line 431
    if-eqz v0, :cond_0

    .line 433
    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 424
    .end local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 434
    .restart local v0    # "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :catch_0
    move-exception v1

    .line 435
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 686
    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 687
    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 689
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    .line 690
    const/4 v12, 0x0

    .line 689
    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 691
    .local v1, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 692
    .local v3, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 693
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 694
    .local v4, "displayWidth":I
    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 699
    .local v2, "displayHeight":I
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 700
    .local v6, "rotation":I
    packed-switch v6, :pswitch_data_0

    .line 718
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid rotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 686
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayHeight":I
    .end local v3    # "displaySize":Landroid/graphics/Point;
    .end local v4    # "displayWidth":I
    .end local v6    # "rotation":I
    :catchall_0
    move-exception v12

    monitor-exit v11

    throw v12

    .line 702
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "displayHeight":I
    .restart local v3    # "displaySize":Landroid/graphics/Point;
    .restart local v4    # "displayWidth":I
    .restart local v6    # "rotation":I
    :pswitch_0
    int-to-float v9, v4

    .line 703
    .local v9, "screenshotWidth":F
    int-to-float v8, v2

    .line 724
    .local v8, "screenshotHeight":F
    :goto_0
    const/4 v7, 0x0

    .line 727
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    float-to-int v12, v9

    .line 728
    float-to-int v13, v8

    .line 727
    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    .line 729
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    if-nez v7, :cond_0

    .line 730
    const/4 v11, 0x0

    return-object v11

    .line 706
    .end local v7    # "screenShot":Landroid/graphics/Bitmap;
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_1
    int-to-float v9, v2

    .line 707
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 708
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 710
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_2
    int-to-float v9, v4

    .line 711
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v2

    .line 712
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 714
    .end local v8    # "screenshotHeight":F
    .end local v9    # "screenshotWidth":F
    :pswitch_3
    int-to-float v9, v2

    .line 715
    .restart local v9    # "screenshotWidth":F
    int-to-float v8, v4

    .line 716
    .restart local v8    # "screenshotHeight":F
    goto :goto_0

    .line 732
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 733
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error while taking screnshot!"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    const/4 v11, 0x0

    return-object v11

    .line 738
    .end local v5    # "re":Landroid/os/RemoteException;
    .local v7, "screenShot":Landroid/graphics/Bitmap;
    :cond_0
    if-eqz v6, :cond_1

    .line 740
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 739
    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 741
    .local v10, "unrotatedScreenShot":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 742
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    .line 743
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    .line 742
    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 744
    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 745
    neg-float v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 746
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 747
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 748
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 749
    move-object v7, v10

    .line 753
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "unrotatedScreenShot":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 755
    return-object v7

    .line 700
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .locals 25
    .param p1, "idleTimeoutMillis"    # J
    .param p3, "globalTimeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 647
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 650
    .local v16, "startTimeMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-gtz v11, :cond_0

    .line 651
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    .line 655
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 657
    .local v4, "currentTimeMillis":J
    sub-long v6, v4, v16

    .line 659
    .local v6, "elapsedGlobalTimeMillis":J
    sub-long v12, p3, v6

    .line 660
    .local v12, "remainingGlobalTimeMillis":J
    const-wide/16 v20, 0x0

    cmp-long v11, v12, v20

    if-gtz v11, :cond_1

    .line 661
    new-instance v11, Ljava/util/concurrent/TimeoutException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "No idle state with idle timeout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 662
    const-string/jumbo v20, " within global timeout: "

    .line 661
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .end local v4    # "currentTimeMillis":J
    .end local v6    # "elapsedGlobalTimeMillis":J
    .end local v12    # "remainingGlobalTimeMillis":J
    .end local v16    # "startTimeMillis":J
    :catchall_0
    move-exception v11

    monitor-exit v18

    throw v11

    .line 666
    .restart local v4    # "currentTimeMillis":J
    .restart local v6    # "elapsedGlobalTimeMillis":J
    .restart local v12    # "remainingGlobalTimeMillis":J
    .restart local v16    # "startTimeMillis":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v8, v4, v20

    .line 667
    .local v8, "elapsedIdleTimeMillis":J
    sub-long v14, p1, v8

    .line 668
    .local v14, "remainingIdleTimeMillis":J
    const-wide/16 v20, 0x0

    cmp-long v11, v14, v20

    if-gtz v11, :cond_2

    monitor-exit v18

    .line 669
    return-void

    .line 672
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 673
    :catch_0
    move-exception v10

    .local v10, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
