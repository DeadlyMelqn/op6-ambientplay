.class public Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerfLockLevel"
.end annotation


# instance fields
.field private mParam:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->readParam(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private readParam(Ljava/lang/String;)V
    .locals 7
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 525
    const-string/jumbo v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 526
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 528
    .local v3, "size":I
    :try_start_0
    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    .line 529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 530
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/OnePlusPerfManager;->numberStringToInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v5, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 533
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception readParam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public getParam()[I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PerfLockLevel{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    if-lez v2, :cond_1

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->mParam:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
