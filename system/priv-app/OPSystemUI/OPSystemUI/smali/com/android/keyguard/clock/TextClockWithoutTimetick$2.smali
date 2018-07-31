.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;
.super Ljava/lang/Object;
.source "TextClockWithoutTimetick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/TextClockWithoutTimetick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;


# direct methods
.method constructor <init>(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 176
    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->-wrap2(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 178
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, "now":J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 181
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-virtual {v4}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$2;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v5}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->-get0(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 182
    return-void
.end method
