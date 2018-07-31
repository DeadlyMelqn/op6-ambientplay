.class public Lcom/android/server/OnePlusPowerController$Cluster;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cluster"
.end annotation


# instance fields
.field private mCluster:[[D

.field private mSize:I

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;II)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "dataNum"    # I
    .param p3, "dimNum"    # I

    .prologue
    const/4 v3, 0x0

    .line 1658
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->this$0:Lcom/android/server/OnePlusPowerController;

    .line 1659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p2, v1, v3

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    .line 1661
    iput v3, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    .line 1662
    return-void
.end method


# virtual methods
.method public getCluster()[[D
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1651
    iget v0, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    return v0
.end method

.method public setCluster([[D)V
    .locals 0
    .param p1, "cluster"    # [[D

    .prologue
    .line 1647
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mCluster:[[D

    .line 1648
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1655
    iput p1, p0, Lcom/android/server/OnePlusPowerController$Cluster;->mSize:I

    .line 1656
    return-void
.end method
