.class final Lcom/android/server/am/RestartProcessManager$CenterPoint;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/RestartProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CenterPoint"
.end annotation


# instance fields
.field public mX:D

.field public mY:D

.field public mZ:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1281
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 1282
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 1283
    iput-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .line 1284
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput-wide p1, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 1288
    iput-wide p3, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 1289
    iput-wide p5, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .line 1290
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 4

    .prologue
    .line 1293
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Point X : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Z : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void
.end method
