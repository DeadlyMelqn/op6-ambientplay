.class public Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RPMMasterInfo"
.end annotation


# instance fields
.field public mEndRaw:Ljava/lang/String;

.field public mStartRaw:Ljava/lang/String;

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .param p2, "startRaw"    # Ljava/lang/String;
    .param p3, "endRaw"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    .line 726
    const-string/jumbo v0, "na"

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 728
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 729
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    .line 730
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 731
    return-void
.end method


# virtual methods
.method public setInEndRaw(Ljava/lang/String;)V
    .locals 0
    .param p1, "endRaw"    # Ljava/lang/String;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    .line 734
    return-void
.end method

.method public toMDMString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "# RPMMasterInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mStartRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->mEndRaw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
