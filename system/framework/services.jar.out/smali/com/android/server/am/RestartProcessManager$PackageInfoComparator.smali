.class final Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;
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
    name = "PackageInfoComparator"
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
    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I
    .locals 9
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    const-wide/16 v2, 0x0

    .line 1611
    new-instance v1, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-static {p1, v1}, Lcom/android/server/am/RestartProcessManager;->-wrap0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1612
    .local v0, "l1":Ljava/lang/Double;
    new-instance v1, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-wide v4, v2

    move-wide v6, v2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    invoke-static {p2, v1}, Lcom/android/server/am/RestartProcessManager;->-wrap0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 1613
    .local v8, "l2":Ljava/lang/Double;
    invoke-virtual {v0, v8}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1609
    check-cast p1, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;->compare(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)I

    move-result v0

    return v0
.end method
