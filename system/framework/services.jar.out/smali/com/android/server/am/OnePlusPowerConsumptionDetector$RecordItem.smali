.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordItem"
.end annotation


# instance fields
.field public connectedBatLevel:I

.field public connectedWallTime:J

.field public diffTime:J

.field public disconnectedBatLevel:I

.field public disconnectedWallTime:J

.field public dozeInactiveTime:J

.field public screenOnTime:J


# direct methods
.method constructor <init>(JJJJJII)V
    .locals 1
    .param p1, "diffTime"    # J
    .param p3, "screenOnTime"    # J
    .param p5, "dozeInactiveTime"    # J
    .param p7, "disconnectedWallTime"    # J
    .param p9, "connectedWallTime"    # J
    .param p11, "disconnectedBatLevel"    # I
    .param p12, "connectedBatLevel"    # I

    .prologue
    .line 806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->diffTime:J

    .line 809
    iput p11, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    .line 810
    iput p12, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    .line 811
    iput-wide p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    .line 812
    iput-wide p5, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->dozeInactiveTime:J

    .line 813
    iput-wide p7, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    .line 814
    iput-wide p9, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    .line 815
    return-void
.end method


# virtual methods
.method public getDiffBatLevel()I
    .locals 2

    .prologue
    .line 818
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toMDM()Ljava/lang/String;
    .locals 4

    .prologue
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 831
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "\"deq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    const-string/jumbo v1, "\",\"ceq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 833
    const-string/jumbo v1, "\",\"dt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 834
    const-string/jumbo v1, "\",\"ct\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 835
    const-string/jumbo v1, "\",\"sot\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 836
    const-string/jumbo v1, "\",\"doz\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->dozeInactiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 843
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "RecordItem{start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get9()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    const-string/jumbo v1, ",end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get9()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    const-string/jumbo v1, ",drained:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedBatLevel:I

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedBatLevel:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    const-string/jumbo v1, "%,kept:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->connectedWallTime:J

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->disconnectedWallTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    const-string/jumbo v1, ",screenon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->screenOnTime:J

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap1(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
