.class final Lcom/android/server/am/RestartProcessManager$ClusterComparator;
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
    name = "ClusterComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/RestartProcessManager$Cluster;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/RestartProcessManager$ClusterComparator;)V
    .locals 0
    .param p1, "-this0"    # Lcom/android/server/am/RestartProcessManager$ClusterComparator;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/RestartProcessManager$Cluster;Lcom/android/server/am/RestartProcessManager$Cluster;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/RestartProcessManager$Cluster;
    .param p2, "rhs"    # Lcom/android/server/am/RestartProcessManager$Cluster;

    .prologue
    .line 1601
    iget-wide v2, p1, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1602
    .local v0, "l1":Ljava/lang/Double;
    iget-wide v2, p2, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1603
    .local v1, "l2":Ljava/lang/Double;
    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1599
    check-cast p1, Lcom/android/server/am/RestartProcessManager$Cluster;

    check-cast p2, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;->compare(Lcom/android/server/am/RestartProcessManager$Cluster;Lcom/android/server/am/RestartProcessManager$Cluster;)I

    move-result v0

    return v0
.end method
