.class Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;
.super Landroid/content/BroadcastReceiver;
.source "TextClockWithoutTimetick.java"


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
    iput-object p1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->-get1(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string/jumbo v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v1, v0}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->-wrap1(Lcom/android/keyguard/clock/TextClockWithoutTimetick;Ljava/lang/String;)V

    .line 170
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/clock/TextClockWithoutTimetick$1;->this$0:Lcom/android/keyguard/clock/TextClockWithoutTimetick;

    invoke-static {v1}, Lcom/android/keyguard/clock/TextClockWithoutTimetick;->-wrap2(Lcom/android/keyguard/clock/TextClockWithoutTimetick;)V

    .line 171
    return-void
.end method