.class final Lcom/android/server/OnePlusPowerController$IdleItem;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdleItem"
.end annotation


# instance fields
.field mDuration:Ljava/time/Duration;

.field mLocalEndTime:Ljava/time/LocalDateTime;

.field mLocalStartTime:Ljava/time/LocalDateTime;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1575
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1576
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1579
    return-void
.end method

.method constructor <init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$IdleItem;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "item"    # Lcom/android/server/OnePlusPowerController$IdleItem;

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1575
    sget-object v0, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1576
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1582
    if-eqz p2, :cond_0

    .line 1583
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalStartTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1584
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getLocalEndTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1585
    invoke-virtual {p2}, Lcom/android/server/OnePlusPowerController$IdleItem;->getDuration()Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1587
    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/OnePlusPowerController;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;
    .param p2, "start"    # Ljava/time/LocalDateTime;
    .param p3, "end"    # Ljava/time/LocalDateTime;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1589
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    sget-object v2, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1575
    sget-object v2, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1576
    sget-object v2, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    iput-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1590
    iput-object p2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1591
    iput-object p3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1592
    if-eqz p2, :cond_1

    move v2, v0

    :goto_0
    if-eqz p3, :cond_2

    :goto_1
    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 1593
    invoke-static {p2, p3}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1595
    :cond_0
    return-void

    :cond_1
    move v2, v1

    .line 1592
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1632
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController$IdleItem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    return-void
.end method

.method getDuration()Ljava/time/Duration;
    .locals 1

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    return-object v0
.end method

.method getLocalEndTime()Ljava/time/LocalDateTime;
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method getLocalStartTime()Ljava/time/LocalDateTime;
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method setDuration(Ljava/time/Duration;)V
    .locals 0
    .param p1, "duration"    # Ljava/time/Duration;

    .prologue
    .line 1618
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    .line 1619
    return-void
.end method

.method setLocalEndTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1614
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    .line 1615
    return-void
.end method

.method setLocalStartTime(Ljava/time/LocalDateTime;)V
    .locals 0
    .param p1, "time"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    .line 1611
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1622
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1623
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "IdleItem {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1624
    const-string/jumbo v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalStartTime:Ljava/time/LocalDateTime;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v3, v3, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1625
    const-string/jumbo v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mLocalEndTime:Ljava/time/LocalDateTime;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v3, v3, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v3}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1626
    const-string/jumbo v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$IdleItem;->mDuration:Ljava/time/Duration;

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1627
    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
