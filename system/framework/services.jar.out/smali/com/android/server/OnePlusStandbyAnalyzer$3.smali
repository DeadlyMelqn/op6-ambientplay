.class Lcom/android/server/OnePlusStandbyAnalyzer$3;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$3;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 1482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;)I
    .locals 4
    .param p1, "o1"    # Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;
    .param p2, "o2"    # Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    .prologue
    .line 1485
    iget-wide v0, p1, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    iget-wide v2, p2, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1486
    :cond_0
    iget-wide v0, p1, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    iget-wide v2, p2, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mHolding:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    return v0

    .line 1487
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1483
    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$3;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;)I

    move-result v0

    return v0
.end method
