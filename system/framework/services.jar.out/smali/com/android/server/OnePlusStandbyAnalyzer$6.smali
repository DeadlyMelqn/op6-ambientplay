.class Lcom/android/server/OnePlusStandbyAnalyzer$6;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V
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
        "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
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
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$6;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;
    .param p2, "o2"    # Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    .prologue
    .line 1410
    iget v0, p2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    iget v1, p1, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1408
    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$6;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;)I

    move-result v0

    return v0
.end method
