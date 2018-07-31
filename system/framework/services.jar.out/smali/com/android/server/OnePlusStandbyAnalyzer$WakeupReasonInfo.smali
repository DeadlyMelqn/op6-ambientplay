.class public Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupReasonInfo"
.end annotation


# instance fields
.field public mAverage_Count:F

.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1663
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1664
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1666
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 1667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1663
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1664
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1668
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 1669
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1670
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 1671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1662
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1663
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1664
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1672
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    .line 1673
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    .line 1674
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    .line 1675
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    .line 1676
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# wr ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
