.class Lcom/android/systemui/qs/tiles/CaffeineTile$1;
.super Landroid/os/CountDownTimer;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CaffeineTile;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    .line 146
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get2(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get2(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 159
    return-void
.end method

.method public onTick(J)V
    .locals 5
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-set0(Lcom/android/systemui/qs/tiles/CaffeineTile;I)I

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 152
    return-void
.end method
