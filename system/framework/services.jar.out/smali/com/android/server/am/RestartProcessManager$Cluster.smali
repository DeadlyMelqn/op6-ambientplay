.class Lcom/android/server/am/RestartProcessManager$Cluster;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cluster"
.end annotation


# instance fields
.field public mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

.field public mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDistance:D

.field public mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1230
    iput p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    .line 1231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    .line 1232
    return-void
.end method


# virtual methods
.method public addData(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)V
    .locals 1
    .param p1, "point"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1252
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1272
    return-void
.end method

.method public dump()V
    .locals 6

    .prologue
    .line 1235
    const-string/jumbo v2, "RestartProcessManager"

    const-string/jumbo v3, "-----------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cluster "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    .line 1238
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Distance from 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    const-string/jumbo v2, "RestartProcessManager"

    const-string/jumbo v3, "All data : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1241
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->dump()V

    goto :goto_0

    .line 1243
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_0
    const-string/jumbo v2, "RestartProcessManager"

    const-string/jumbo v3, "-----------------------------------------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-void
.end method

.method public getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    return-object v0
.end method

.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mId:I

    return v0
.end method

.method public setCenterPoint(Lcom/android/server/am/RestartProcessManager$CenterPoint;)V
    .locals 0
    .param p1, "centroid"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .prologue
    .line 1263
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .line 1264
    return-void
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1255
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    .line 1256
    return-void
.end method
