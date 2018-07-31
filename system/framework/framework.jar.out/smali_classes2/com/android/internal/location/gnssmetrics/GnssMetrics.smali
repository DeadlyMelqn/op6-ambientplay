.class public Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_BETWEEN_FIXES_MILLISECS:I = 0x3e8


# instance fields
.field private locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private logStartInElapsedRealTime:Ljava/lang/String;

.field private positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

.field private topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 43
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 44
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 45
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;)V

    iput-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    .line 46
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 47
    return-void
.end method

.method private reset()V
    .locals 6

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "s":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 263
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 264
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 265
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->reset()V

    .line 266
    return-void
.end method


# virtual methods
.method public dumpGnssMetricsAsProtoString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;

    invoke-direct {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;-><init>()V

    .line 128
    .local v0, "msg":Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numLocationReportProcessed:I

    .line 130
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->percentageLocationFailure:I

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTimeToFirstFixProcessed:I

    .line 134
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTimeToFirstFixSecs:I

    .line 136
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    double-to-int v2, v2

    .line 135
    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTimeToFirstFixSecs:I

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numPositionAccuracyProcessed:I

    .line 140
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanPositionAccuracyMeters:I

    .line 142
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    double-to-int v2, v2

    .line 141
    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationPositionAccuracyMeters:I

    .line 144
    :cond_2
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    iput v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->numTopFourAverageCn0Processed:I

    .line 146
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->meanTopFourAverageCn0DbHz:D

    .line 148
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 147
    iput-wide v2, v0, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->standardDeviationTopFourAverageCn0DbHz:D

    .line 150
    :cond_3
    invoke-static {v0}, Lcom/android/internal/location/nano/GnssLogsProto$GnssLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v2

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "s":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->reset()V

    .line 152
    return-object v1
.end method

.method public dumpGnssMetricsAsText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "GNSS_KPI_START"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, "  KPI logging start time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logStartInElapsedRealTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, "  KPI logging end time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 166
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, "  Number of location reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "\n"

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 170
    const-string/jumbo v1, "  Percentage location failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    .line 170
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    const-string/jumbo v2, "\n"

    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    const-string/jumbo v1, "  Number of TTFF reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "\n"

    .line 173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    const-string/jumbo v1, "  TTFF mean (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, "  TTFF standard deviation (sec): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 177
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "\n"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    const-string/jumbo v1, "  Number of position accuracy reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "\n"

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 183
    const-string/jumbo v1, "  Position accuracy mean (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    .line 183
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    const-string/jumbo v2, "\n"

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string/jumbo v1, "  Position accuracy standard deviation (m): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 185
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 186
    const-string/jumbo v2, "\n"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_2
    const-string/jumbo v1, "  Number of CN0 reports: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 189
    const-string/jumbo v2, "\n"

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 191
    const-string/jumbo v1, "  Top 4 Avg CN0 mean (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getMean()D

    move-result-wide v2

    .line 191
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "\n"

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v1, "  Top 4 Avg CN0 standard deviation (dB-Hz): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->getStandardDeviation()D

    move-result-wide v2

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string/jumbo v2, "\n"

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_3
    const-string/jumbo v1, "GNSS_KPI_END"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public logCn0([FI)V
    .locals 8
    .param p1, "cn0s"    # [F
    .param p2, "numSv"    # I

    .prologue
    .line 106
    const/4 v4, 0x4

    if-ge p2, v4, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    .line 110
    .local v0, "cn0Array":[F
    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    .line 111
    add-int/lit8 v4, p2, -0x4

    aget v4, v0, v4

    float-to-double v4, v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_2

    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .local v2, "top4AvgCn0":D
    add-int/lit8 v1, p2, -0x4

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 114
    aget v4, v0, v1

    float-to-double v4, v4

    add-double/2addr v2, v4

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    div-double/2addr v2, v4

    .line 117
    iget-object v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->topFourAverageCn0Statistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 119
    .end local v1    # "i":I
    .end local v2    # "top4AvgCn0":D
    :cond_2
    return-void
.end method

.method public logMissedReports(II)V
    .locals 6
    .param p1, "desiredTimeBetweenFixesMilliSeconds"    # I
    .param p2, "actualTimeBetweenFixesMilliSeconds"    # I

    .prologue
    .line 72
    const/16 v2, 0x3e8

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 71
    div-int v2, p2, v2

    add-int/lit8 v1, v2, -0x1

    .line 73
    .local v1, "numReportMissed":I
    if-lez v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 75
    iget-object v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public logPositionAccuracyMeters(F)V
    .locals 4
    .param p1, "positionAccuracyMeters"    # F

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->positionAccuracyMeterStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    float-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 98
    return-void
.end method

.method public logReceivedLocationStatus(Z)V
    .locals 4
    .param p1, "isSuccessful"    # Z

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->locationFailureStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 60
    return-void
.end method

.method public logTimeToFirstFixMilliSecs(I)V
    .locals 4
    .param p1, "timeToFirstFixMilliSeconds"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->timeToFirstFixSecStatistics:Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;

    div-int/lit16 v1, p1, 0x3e8

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->addItem(D)V

    .line 88
    return-void
.end method
