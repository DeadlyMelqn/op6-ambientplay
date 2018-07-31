.class final Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DayLaunchTimesComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/RestartProcessManager$DayRecord;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$DayRecord;Lcom/android/server/am/RestartProcessManager$DayRecord;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$DayRecord;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$DayRecord;

    .prologue
    .line 1591
    invoke-static {p1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1592
    .local v0, "l1":Ljava/lang/Long;
    invoke-static {p2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1593
    .local v1, "l2":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1589
    check-cast p1, Lcom/android/server/am/RestartProcessManager$DayRecord;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;->compare(Lcom/android/server/am/RestartProcessManager$DayRecord;Lcom/android/server/am/RestartProcessManager$DayRecord;)I

    move-result v0

    return v0
.end method
