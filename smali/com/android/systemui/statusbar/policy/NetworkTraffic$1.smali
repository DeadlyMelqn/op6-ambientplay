.class Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;
.super Landroid/os/Handler;
.source "NetworkTraffic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkTraffic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    .line 62
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method

.method private formatOutput(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "timeDelta"    # J
    .param p3, "data"    # J
    .param p5, "symbol"    # Ljava/lang/String;

    .prologue
    .line 112
    long-to-float v2, p3

    long-to-float v3, p1

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-long v0, v2

    .line 113
    .local v0, "speed":J
    const-wide/16 v2, 0x400

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get0()Ljava/text/DecimalFormat;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 115
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get0()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 117
    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get0()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 120
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get0()Ljava/text/DecimalFormat;

    move-result-object v3

    long-to-float v4, v0

    const/high16 v5, 0x4e800000

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private shouldHide(JJJ)Z
    .locals 9
    .param p1, "rxData"    # J
    .param p3, "txData"    # J
    .param p5, "timeDelta"    # J

    .prologue
    .line 124
    long-to-float v4, p3

    long-to-float v5, p5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-long v4, v4

    const-wide/16 v6, 0x400

    div-long v2, v4, v6

    .line 125
    .local v2, "speedTxKB":J
    long-to-float v4, p1

    long-to-float v5, p5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-long v4, v4

    const-wide/16 v6, 0x400

    div-long v0, v4, v6

    .line 126
    .local v0, "speedRxKB":J
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 128
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const/4 v4, 0x1

    .line 126
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 128
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 127
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 67
    .local v8, "timeDelta":J
    long-to-double v10, v8

    const-wide v12, 0x4096440000000000L    # 1425.0

    cmpg-double v3, v10, v12

    if-gez v3, :cond_1

    .line 68
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v10, 0x1

    if-eq v3, v10, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    const-wide/16 v10, 0x1

    cmp-long v3, v8, v10

    if-gez v3, :cond_1

    .line 74
    const-wide v8, 0x7fffffffffffffffL

    .line 77
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v3, v10, v11}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-set0(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 80
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v18

    .line 81
    .local v18, "newTotalRxBytes":J
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v20

    .line 82
    .local v20, "newTotalTxBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get6(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v10

    sub-long v4, v18, v10

    .line 83
    .local v4, "rxData":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get7(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)J

    move-result-wide v10

    sub-long v6, v20, v10

    .local v6, "txData":J
    move-object/from16 v3, p0

    .line 85
    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->shouldHide(JJJ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const-string/jumbo v10, ""

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    .line 105
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v18

    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-set1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-set2(Lcom/android/systemui/statusbar/policy/NetworkTraffic;J)J

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get5(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get4(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x5dc

    invoke-virtual {v3, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void

    .line 90
    :cond_2
    const-string/jumbo v16, "B/s"

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide v14, v6

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "output":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v16, "B/s"

    move-object/from16 v11, p0

    move-wide v12, v8

    move-wide v14, v4

    invoke-direct/range {v11 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->formatOutput(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->-get8(Lcom/android/systemui/statusbar/policy/NetworkTraffic;)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setTextSize(IF)V

    .line 99
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkTraffic$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkTraffic;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/systemui/statusbar/policy/NetworkTraffic;->setVisibility(I)V

    goto/16 :goto_0
.end method
