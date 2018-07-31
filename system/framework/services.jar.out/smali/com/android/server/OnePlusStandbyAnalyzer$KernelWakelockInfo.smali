.class public Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelWakelockInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mHolding:J

.field public mHolding_End:J

.field public mHolding_Start:J

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1609
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1610
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1611
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1612
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1613
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1614
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1609
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1610
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1611
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1612
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1613
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1616
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1617
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1618
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "count"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1609
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1610
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1611
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1612
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1613
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1626
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1627
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1628
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1629
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding_start"    # J
    .param p4, "holding_end"    # J
    .param p6, "count_start"    # I
    .param p7, "count_end"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1609
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1610
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1611
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1612
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1613
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1631
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1632
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1633
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1634
    iput p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1635
    iput p7, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1636
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1637
    iget v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1638
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "holding"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1608
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1609
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1610
    iput-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1611
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount:I

    .line 1612
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_End:I

    .line 1613
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mCount_Start:I

    .line 1620
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    .line 1621
    iput-wide p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    .line 1622
    iput-wide p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    .line 1623
    iput-wide p6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    .line 1624
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_Start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding_End:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mHolding:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
