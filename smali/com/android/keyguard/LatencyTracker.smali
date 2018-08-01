.class public Lcom/android/keyguard/LatencyTracker;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# static fields
.field private static final NAMES:[Ljava/lang/String;

.field private static sLatencyTracker:Lcom/android/keyguard/LatencyTracker;


# instance fields
.field private mEnabled:Z

.field private final mStartRtc:Landroid/util/SparseLongArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/LatencyTracker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/LatencyTracker;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/LatencyTracker;->reloadProperty()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const-string/jumbo v1, "expand panel"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "toggle recents"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "fingerprint wake-and-unlock"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "check credential"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "check credential unlocked"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "turn on screen"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 79
    sput-object v0, Lcom/android/keyguard/LatencyTracker;->NAMES:[Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    .line 100
    new-instance v0, Lcom/android/keyguard/LatencyTracker$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LatencyTracker$1;-><init>(Lcom/android/keyguard/LatencyTracker;)V

    .line 105
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.systemui.RELOAD_LATENCY_TRACKER_PROPERTY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/android/keyguard/LatencyTracker;->reloadProperty()V

    .line 107
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/android/keyguard/LatencyTracker;->sLatencyTracker:Lcom/android/keyguard/LatencyTracker;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/keyguard/LatencyTracker;

    invoke-direct {v0, p0}, Lcom/android/keyguard/LatencyTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/LatencyTracker;->sLatencyTracker:Lcom/android/keyguard/LatencyTracker;

    .line 96
    :cond_0
    sget-object v0, Lcom/android/keyguard/LatencyTracker;->sLatencyTracker:Lcom/android/keyguard/LatencyTracker;

    return-object v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/keyguard/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/LatencyTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/keyguard/LatencyTracker;->mEnabled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reloadProperty()V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, "debug.systemui.latency_tracking"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/LatencyTracker;->mEnabled:Z

    .line 111
    return-void
.end method


# virtual methods
.method public onActionEnd(I)V
    .locals 11
    .param p1, "action"    # I

    .prologue
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    .line 136
    iget-boolean v6, p0, Lcom/android/keyguard/LatencyTracker;->mEnabled:Z

    if-nez v6, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 140
    .local v2, "endRtc":J
    iget-object v6, p0, Lcom/android/keyguard/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 141
    .local v4, "startRtc":J
    cmp-long v6, v4, v8

    if-nez v6, :cond_1

    .line 142
    return-void

    .line 144
    :cond_1
    iget-object v6, p0, Lcom/android/keyguard/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 145
    sget-object v6, Lcom/android/keyguard/LatencyTracker;->NAMES:[Ljava/lang/String;

    aget-object v6, v6, p1

    const-wide/16 v8, 0x1000

    invoke-static {v8, v9, v6, v10}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 146
    sub-long v0, v2, v4

    .line 147
    .local v0, "duration":J
    const-string/jumbo v6, "LatencyTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " latency="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    long-to-int v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x8ce6

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 149
    return-void
.end method

.method public onActionStart(I)V
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/keyguard/LatencyTracker;->mEnabled:Z

    if-nez v0, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/android/keyguard/LatencyTracker;->NAMES:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-wide/16 v2, 0x1000

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 127
    iget-object v0, p0, Lcom/android/keyguard/LatencyTracker;->mStartRtc:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 128
    return-void
.end method
