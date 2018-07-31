.class public Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidWakeupAlarmsInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mStart:I

.field public mUid:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "Uid"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1577
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 1578
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 1580
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    .line 1581
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1582
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "Uid"    # I
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1576
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1577
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 1578
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 1584
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    .line 1585
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1586
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    .line 1587
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    .line 1588
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# WakeupAlarm ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
