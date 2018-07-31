.class abstract Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;
.super Ljava/lang/Object;
.source "AodUpdateMonitor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PocketCheck"
.end annotation


# static fields
.field protected static final RESULT_FAR:I = 0x2

.field protected static final RESULT_NEAR:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mMaxRange:F

.field private mRegistered:Z

.field private mRegisteredTime:J

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/aod/AodUpdateMonitor;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    const-string/jumbo v0, "AodUpdateMonitor.PocketCheck"

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mTag:Ljava/lang/String;

    .line 758
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    .line 760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    .line 762
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    .line 748
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/AodUpdateMonitor;Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/aod/AodUpdateMonitor;
    .param p2, "-this1"    # Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;-><init>(Lcom/oneplus/aod/AodUpdateMonitor;)V

    return-void
.end method

.method private onPocketResult(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    const/4 v6, 0x1

    .line 813
    const-string/jumbo v1, "AodUpdateMonitor.PocketCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get20(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", new state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 817
    if-ne p1, v6, :cond_0

    const/4 v0, 0x1

    .line 818
    .local v0, "isNear":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get20(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 819
    const-string/jumbo v1, "AodUpdateMonitor.PocketCheck"

    const-string/jumbo v2, "state unchanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-void

    .line 817
    .end local v0    # "isNear":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isNear":Z
    goto :goto_0

    .line 823
    :cond_1
    const-string/jumbo v1, "AodUpdateMonitor.PocketCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPocketResult: near:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dreamState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v3}, Lcom/oneplus/aod/AodUpdateMonitor;->-get16(Lcom/oneplus/aod/AodUpdateMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1, p1}, Lcom/oneplus/aod/AodUpdateMonitor;->-set8(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 827
    if-nez v0, :cond_3

    .line 828
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get3(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 829
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1, v6}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap1(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    .line 835
    :cond_2
    :goto_1
    return-void

    .line 831
    :cond_3
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1}, Lcom/oneplus/aod/AodUpdateMonitor;->-get3(Lcom/oneplus/aod/AodUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 833
    iget-object v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v1, v6}, Lcom/oneplus/aod/AodUpdateMonitor;->-wrap1(Lcom/oneplus/aod/AodUpdateMonitor;Z)V

    goto :goto_1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 810
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 792
    iput-boolean v1, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    .line 793
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_0

    .line 794
    const-string/jumbo v1, "AodUpdateMonitor.PocketCheck"

    const-string/jumbo v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-direct {p0, v5}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    .line 801
    :goto_0
    return-void

    .line 797
    :cond_0
    const-string/jumbo v2, "AodUpdateMonitor.PocketCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 799
    .local v0, "isNear":Z
    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    goto :goto_0

    .line 798
    .end local v0    # "isNear":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNear":Z
    goto :goto_1

    .line 799
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public run()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    .line 806
    return-void
.end method

.method public startListening()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 765
    iget-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    if-eqz v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get22(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v0

    const v1, 0x1fa2651

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 767
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_1

    .line 768
    const-string/jumbo v0, "AodUpdateMonitor.PocketCheck"

    const-string/jumbo v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-direct {p0, v4}, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->onPocketResult(I)V

    .line 770
    return-void

    .line 772
    :cond_1
    const-string/jumbo v0, "AodUpdateMonitor.PocketCheck"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mMaxRange:F

    .line 774
    iput-boolean v4, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mChanged:Z

    .line 775
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get22(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 776
    iget-object v5, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    .line 775
    const/4 v3, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 777
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegisteredTime:J

    .line 780
    return-void
.end method

.method public stopListening()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 783
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 784
    const-string/jumbo v0, "AodUpdateMonitor.PocketCheck"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0, v2}, Lcom/oneplus/aod/AodUpdateMonitor;->-set8(Lcom/oneplus/aod/AodUpdateMonitor;I)I

    .line 786
    iget-object v0, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->this$0:Lcom/oneplus/aod/AodUpdateMonitor;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->-get22(Lcom/oneplus/aod/AodUpdateMonitor;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 787
    iput-boolean v2, p0, Lcom/oneplus/aod/AodUpdateMonitor$PocketCheck;->mRegistered:Z

    .line 788
    return-void
.end method
