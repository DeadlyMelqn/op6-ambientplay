.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# static fields
.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final CONNECT_LATENCY_MAXIMUM_RECORDS:I = 0x4e20

.field private static final DBG:Z = false

.field private static final INITIAL_DNS_BATCH_SIZE:I = 0x64

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectEvents:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/metrics/ConnectStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mDnsEvents:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/metrics/DnsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNetdEventCallback:Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mWakeupEventCursor:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mWakeupEvents:[Landroid/net/metrics/WakeupEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-0(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    .prologue
    .line 211
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-1(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    .prologue
    .line 212
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-2(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -com_android_server_connectivity_NetdEventListenerService-mthref-3(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 3
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 85
    const/16 v0, 0x400

    new-array v0, v0, [Landroid/net/metrics/WakeupEvent;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    .line 93
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    .line 92
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 116
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 117
    return-void
.end method

.method private addWakeupEvent(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timestampMs"    # J
    .param p4, "uid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 178
    iget-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetdEventListenerService;->wakeupEventIndex(J)I

    move-result v1

    .line 179
    .local v1, "index":I
    iget-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    .line 180
    new-instance v0, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v0}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 181
    .local v0, "event":Landroid/net/metrics/WakeupEvent;
    iput-object p1, v0, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 182
    iput-wide p2, v0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 183
    iput p4, v0, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 184
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    aput-object v0, v3, v1

    .line 185
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    .line 186
    .local v2, "stats":Landroid/net/metrics/WakeupStats;
    if-nez v2, :cond_0

    .line 187
    new-instance v2, Landroid/net/metrics/WakeupStats;

    .end local v2    # "stats":Landroid/net/metrics/WakeupStats;
    invoke-direct {v2, p1}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v2    # "stats":Landroid/net/metrics/WakeupStats;
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    invoke-virtual {v2, v0}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 191
    return-void
.end method

.method private static flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<TT;",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    .local p1, "in":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 252
    return-void
.end method

.method private getTransports(I)J
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v2, Landroid/net/Network;

    invoke-direct {v2, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 277
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 278
    const-wide/16 v2, 0x0

    return-wide v2

    .line 280
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    return-wide v2
.end method

.method private getWakeupEvents()[Landroid/net/metrics/WakeupEvent;
    .locals 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const-wide/16 v12, 0x1

    .line 195
    iget-wide v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    iget-object v10, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    array-length v10, v10

    int-to-long v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v4, v8

    .line 196
    .local v4, "length":I
    new-array v5, v4, [Landroid/net/metrics/WakeupEvent;

    .line 198
    .local v5, "out":[Landroid/net/metrics/WakeupEvent;
    iget-wide v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEventCursor:J

    sub-long v0, v8, v12

    .line 199
    .local v0, "inCursor":J
    array-length v8, v5

    add-int/lit8 v6, v8, -0x1

    .local v6, "outIdx":I
    move v7, v6

    .end local v6    # "outIdx":I
    .local v7, "outIdx":I
    move-wide v2, v0

    .line 200
    .end local v0    # "inCursor":J
    .local v2, "inCursor":J
    :goto_0
    if-ltz v7, :cond_0

    .line 201
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "outIdx":I
    .restart local v6    # "outIdx":I
    iget-object v8, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:[Landroid/net/metrics/WakeupEvent;

    sub-long v0, v2, v12

    .end local v2    # "inCursor":J
    .restart local v0    # "inCursor":J
    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->wakeupEventIndex(J)I

    move-result v9

    aget-object v8, v8, v9

    aput-object v8, v5, v7

    move v7, v6

    .end local v6    # "outIdx":I
    .restart local v7    # "outIdx":I
    move-wide v2, v0

    .end local v0    # "inCursor":J
    .restart local v2    # "inCursor":J
    goto :goto_0

    .line 203
    :cond_0
    return-object v5
.end method

.method static synthetic lambda$-com_android_server_connectivity_NetdEventListenerService_8935(Landroid/net/metrics/ConnectStats;)Ljava/lang/Object;
    .locals 0
    .param p0, "x"    # Landroid/net/metrics/ConnectStats;

    .prologue
    .line 228
    return-object p0
.end method

.method static synthetic lambda$-com_android_server_connectivity_NetdEventListenerService_8987(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;
    .locals 0
    .param p0, "x"    # Landroid/net/metrics/DnsEvent;

    .prologue
    .line 229
    return-object p0
.end method

.method private static listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p3, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/PrintWriter;",
            "Landroid/util/SparseArray",
            "<TT;>;",
            "Ljava/util/function/Function",
            "<TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "events":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p2, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 259
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 260
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method private makeConnectStats(I)Landroid/net/metrics/ConnectStats;
    .locals 6
    .param p1, "netId"    # I

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    .line 266
    .local v2, "transports":J
    new-instance v0, Landroid/net/metrics/ConnectStats;

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    const/16 v5, 0x4e20

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ConnectStats;-><init>(IJLcom/android/internal/util/TokenBucket;I)V

    return-object v0
.end method

.method private makeDnsEvent(I)Landroid/net/metrics/DnsEvent;
    .locals 4
    .param p1, "netId"    # I

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v0

    .line 271
    .local v0, "transports":J
    new-instance v2, Landroid/net/metrics/DnsEvent;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v0, v1, v3}, Landroid/net/metrics/DnsEvent;-><init>(IJI)V

    return-object v2
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 285
    return-void
.end method

.method private static varargs maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 289
    return-void
.end method

.method private static wakeupEventIndex(J)I
    .locals 2
    .param p0, "cursor"    # J

    .prologue
    .line 207
    const-wide/16 v0, 0x400

    rem-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 220
    :try_start_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 221
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->list(Ljava/io/PrintWriter;)V

    .line 224
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 225
    return-void

    .end local v0    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$0:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    invoke-static {p1, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V

    .line 212
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$1:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    invoke-static {p1, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->flushProtos(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/function/Function;)V

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 217
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$2:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v4, "\n"

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v3, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$3:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v4, "\n"

    invoke-static {p1, v2, v3, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getWakeupEvents()[Landroid/net/metrics/WakeupEvent;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 234
    .local v1, "wakeup":Landroid/net/metrics/WakeupEvent;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "wakeup":Landroid/net/metrics/WakeupEvent;
    :cond_1
    monitor-exit p0

    .line 236
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized listAsProtos(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$4:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v3, ""

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;->$INST$5:Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY;

    const-string/jumbo v3, ""

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->listEvents(Ljava/io/PrintWriter;Landroid/util/SparseArray;Ljava/util/function/Function;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 244
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 7
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 145
    :try_start_0
    const-string/jumbo v1, "onConnectEvent(%d, %d, %dms)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/ConnectStats;

    .line 148
    .local v0, "connectStats":Landroid/net/metrics/ConnectStats;
    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->makeConnectStats(I)Landroid/net/metrics/ConnectStats;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Landroid/net/metrics/ConnectStats;->addEvent(IILjava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v1, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v2, p4

    move v3, p5

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 157
    return-void

    .end local v0    # "connectStats":Landroid/net/metrics/ConnectStats;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 8
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 125
    :try_start_0
    const-string/jumbo v0, "onDnsEvent(%d, %d, %d, %dms)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/metrics/DnsEvent;

    .line 128
    .local v7, "dnsEvent":Landroid/net/metrics/DnsEvent;
    if-nez v7, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->makeDnsEvent(I)Landroid/net/metrics/DnsEvent;

    move-result-object v7

    .line 130
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    :cond_0
    int-to-byte v0, p2

    int-to-byte v1, p3

    invoke-virtual {v7, v0, v1, p4}, Landroid/net/metrics/DnsEvent;->addResult(BBI)V

    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 136
    .local v4, "timestamp":J
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    move-object v1, p5

    move-object v2, p6

    move v3, p7

    move/from16 v6, p8

    invoke-interface/range {v0 .. v6}, Landroid/net/INetdEventCallback;->onDnsEvent(Ljava/lang/String;[Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "timestamp":J
    :cond_1
    monitor-exit p0

    .line 138
    return-void

    .end local v7    # "dnsEvent":Landroid/net/metrics/DnsEvent;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;IIJ)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "gid"    # I
    .param p4, "timestampNs"    # J

    .prologue
    monitor-enter p0

    .line 161
    :try_start_0
    const-string/jumbo v1, "onWakeupEvent(%s, %d, %d, %sns)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/android/server/connectivity/NetdEventListenerService;->maybeVerboseLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string/jumbo v1, "iface:"

    const-string/jumbo v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "iface":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-lez v1, :cond_0

    .line 168
    const-wide/32 v4, 0xf4240

    div-long v2, p4, v4

    .line 173
    .local v2, "timestampMs":J
    :goto_0
    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 174
    return-void

    .line 170
    .end local v2    # "timestampMs":J
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .restart local v2    # "timestampMs":J
    goto :goto_0

    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "timestampMs":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerNetdEventCallback(Landroid/net/INetdEventCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/net/INetdEventCallback;

    .prologue
    monitor-enter p0

    .line 100
    :try_start_0
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterNetdEventCallback()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 105
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallback:Landroid/net/INetdEventCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
