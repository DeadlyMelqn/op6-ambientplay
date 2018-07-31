.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    .line 30
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 28
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 36
    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v24

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v26

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v14

    .line 39
    .local v14, "numClusters":I
    const-wide/16 v8, 0x0

    .line 40
    .local v8, "cpuPowerMaUs":D
    const/4 v4, 0x0

    .local v4, "cluster":I
    :goto_0
    if-ge v4, v14, :cond_1

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v20

    .line 42
    .local v20, "speedsForCluster":I
    const/16 v19, 0x0

    .local v19, "speed":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 43
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v22

    .line 44
    .local v22, "timeUs":J
    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v24, v0

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v26

    .line 44
    mul-double v10, v24, v26

    .line 51
    .local v10, "cpuSpeedStepPower":D
    add-double/2addr v8, v10

    .line 42
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 40
    .end local v10    # "cpuSpeedStepPower":D
    .end local v22    # "timeUs":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    .end local v19    # "speed":I
    .end local v20    # "speedsForCluster":I
    :cond_1
    const-wide v24, 0x41ead27480000000L    # 3.6E9

    div-double v24, v8, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 62
    const-wide/16 v12, 0x0

    .line 64
    .local v12, "highestDrain":D
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 65
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v16

    .line 66
    .local v16, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    .line 67
    .local v17, "processStatsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 68
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    .line 71
    .local v18, "ps":Landroid/os/BatteryStats$Uid$Proc;
    if-nez v18, :cond_3

    .line 72
    const-string/jumbo v21, "CpuPowerCalculator"

    const-string/jumbo v24, "WARNING! getProcessStats()\'s value is null"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 76
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 77
    .local v15, "processName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 79
    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v24

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    .line 80
    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    .line 79
    add-long v6, v24, v26

    .line 84
    .local v6, "costValue":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 85
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v24, "*"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    .line 84
    if-eqz v21, :cond_5

    .line 86
    :cond_4
    long-to-double v12, v6

    .line 87
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_3

    .line 88
    :cond_5
    long-to-double v0, v6

    move-wide/from16 v24, v0

    cmpg-double v21, v12, v24

    if-gez v21, :cond_2

    const-string/jumbo v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2

    .line 89
    long-to-double v12, v6

    .line 90
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_3

    .line 95
    .end local v6    # "costValue":J
    .end local v15    # "processName":Ljava/lang/String;
    .end local v18    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    :cond_6
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v26, v0

    cmp-long v21, v24, v26

    if-lez v21, :cond_7

    .line 101
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 103
    :cond_7
    return-void
.end method
