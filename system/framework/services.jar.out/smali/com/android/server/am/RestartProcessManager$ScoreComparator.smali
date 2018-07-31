.class final Lcom/android/server/am/RestartProcessManager$ScoreComparator;
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
    name = "ScoreComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$ScoreComparator;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/am/RestartProcessManager$ScoreComparator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    .line 1621
    iget-wide v2, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v4, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v2, v4

    iget-wide v4, p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1622
    .local v0, "l1":Ljava/lang/Double;
    iget-wide v2, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v4, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    add-double/2addr v2, v4

    iget-wide v4, p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1623
    .local v1, "l2":Ljava/lang/Double;
    invoke-virtual {v1, v0}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1619
    check-cast p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;->compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I

    move-result v0

    return v0
.end method
