.class Lcom/android/systemui/doze/DozeTriggers$2;
.super Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
.source "DozeTriggers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;

.field final synthetic val$callback:Ljava/util/function/IntConsumer;

.field final synthetic val$pulseReason:I

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/IntConsumer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeTriggers;
    .param p2, "this$0_1"    # Lcom/android/systemui/doze/DozeTriggers;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    iput-wide p3, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$start:J

    iput p5, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$pulseReason:I

    iput-object p6, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$callback:Ljava/util/function/IntConsumer;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 7
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x1

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "end":J
    iget-object v3, p0, Lcom/android/systemui/doze/DozeTriggers$2;->this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {v3}, Lcom/android/systemui/doze/DozeTriggers;->-get0(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;

    move-result-object v3

    if-ne p1, v2, :cond_0

    .line 119
    :goto_0
    iget-wide v4, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$start:J

    sub-long v4, v0, v4

    iget v6, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$pulseReason:I

    .line 118
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(Landroid/content/Context;ZJI)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers$2;->val$callback:Ljava/util/function/IntConsumer;

    invoke-interface {v2, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 121
    return-void

    .line 118
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
