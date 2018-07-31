.class public Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WiFiWakeUpInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mStart:I

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;I)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .param p2, "count"    # I

    .prologue
    const/4 v0, 0x0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    .line 746
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    .line 747
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    .line 749
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    .line 750
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    .line 751
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .param p2, "count"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    .line 746
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    .line 747
    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    .line 753
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    .line 754
    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    .line 755
    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    .line 756
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    .line 757
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# WiFiWakeUpInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
