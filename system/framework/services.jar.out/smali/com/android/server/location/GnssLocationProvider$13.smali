.class Lcom/android/server/location/GnssLocationProvider$13;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 1077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1080
    new-instance v2, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get18(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Ljava/util/Properties;)V

    .line 1081
    .local v2, "xtraDownloader":Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v2}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 1082
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 1083
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v4, "calling native_inject_xtra_data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    array-length v4, v0

    invoke-static {v3, v0, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap35(Lcom/android/server/location/GnssLocationProvider;[BI)V

    .line 1085
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GnssLocationProvider$BackOff;->reset()V

    .line 1088
    :cond_1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/location/GnssLocationProvider;->-wrap40(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    .line 1090
    if-nez v0, :cond_2

    .line 1093
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get9(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    .line 1094
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->-get20(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssLocationProvider$BackOff;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/location/GnssLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v4

    .line 1093
    const/4 v6, 0x6

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1099
    :cond_2
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get12(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1100
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1104
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$13;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->-get5(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1105
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "WakeLock released by handleDownloadXtraData()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v4

    .line 1115
    return-void

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "Wakelock timeout & release race exception in handleDownloadXtraData()"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1099
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1111
    :cond_4
    :try_start_3
    const-string/jumbo v3, "GnssLocationProvider"

    const-string/jumbo v5, "WakeLock expired before release in handleDownloadXtraData()"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
