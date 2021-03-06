.class Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;

    .prologue
    .line 1882
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "-this1"    # Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .locals 17
    .param p1, "how"    # I

    .prologue
    .line 1887
    const/4 v12, 0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_0

    .line 1888
    new-instance v12, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v13, 0x0

    invoke-direct {v12, v14, v15, v13}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v12

    .line 1893
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v12}, Lcom/android/server/NetworkManagementService;->-get1(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v12

    const-string/jumbo v13, "bandwidth"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const-string/jumbo v15, "gettetherstats"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-virtual {v12, v13, v14}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1897
    .local v7, "events":[Lcom/android/server/NativeDaemonEvent;
    new-instance v10, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const/4 v14, 0x1

    invoke-direct {v10, v12, v13, v14}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1898
    .local v10, "stats":Landroid/net/NetworkStats;
    const/4 v12, 0x0

    array-length v13, v7

    :goto_0
    if-ge v12, v13, :cond_2

    aget-object v6, v7, v12

    .line 1899
    .local v6, "event":Lcom/android/server/NativeDaemonEvent;
    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v14

    const/16 v15, 0x72

    if-eq v14, v15, :cond_1

    .line 1898
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1894
    .end local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v7    # "events":[Lcom/android/server/NativeDaemonEvent;
    .end local v10    # "stats":Landroid/net/NetworkStats;
    :catch_0
    move-exception v2

    .line 1895
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->rethrowAsParcelableException()Ljava/lang/IllegalArgumentException;

    move-result-object v12

    throw v12

    .line 1902
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    .restart local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    .restart local v7    # "events":[Lcom/android/server/NativeDaemonEvent;
    .restart local v10    # "stats":Landroid/net/NetworkStats;
    :cond_1
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-virtual {v6}, Lcom/android/server/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v11, "tok":Ljava/util/StringTokenizer;
    :try_start_1
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 1905
    .local v8, "ifaceIn":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1907
    .local v9, "ifaceOut":Ljava/lang/String;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1908
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    iput-object v9, v5, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1909
    const/4 v14, -0x5

    iput v14, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1910
    const/4 v14, 0x0

    iput v14, v5, Landroid/net/NetworkStats$Entry;->set:I

    .line 1911
    const/4 v14, 0x0

    iput v14, v5, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1912
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1913
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1914
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1915
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v5, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1916
    invoke-virtual {v10, v5}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 1917
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v8    # "ifaceIn":Ljava/lang/String;
    .end local v9    # "ifaceOut":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 1918
    .local v4, "e":Ljava/util/NoSuchElementException;
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "problem parsing tethering stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1919
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    :catch_2
    move-exception v3

    .line 1920
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "problem parsing tethering stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1923
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "event":Lcom/android/server/NativeDaemonEvent;
    .end local v11    # "tok":Ljava/util/StringTokenizer;
    :cond_2
    return-object v10
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .prologue
    .line 1929
    return-void
.end method
