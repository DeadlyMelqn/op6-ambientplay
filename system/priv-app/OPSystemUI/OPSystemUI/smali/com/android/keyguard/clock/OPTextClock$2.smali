.class Lcom/android/keyguard/clock/OPTextClock$2;
.super Ljava/lang/Object;
.source "OPTextClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/clock/OPTextClock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/clock/OPTextClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/clock/OPTextClock;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/keyguard/clock/OPTextClock$2;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 180
    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock$2;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v4}, Lcom/android/keyguard/clock/OPTextClock;->-wrap2(Lcom/android/keyguard/clock/OPTextClock;)V

    .line 182
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "now":J
    rem-long v4, v2, v6

    sub-long v4, v6, v4

    add-long v0, v2, v4

    .line 185
    .local v0, "next":J
    iget-object v4, p0, Lcom/android/keyguard/clock/OPTextClock$2;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-virtual {v4}, Lcom/android/keyguard/clock/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/clock/OPTextClock$2;->this$0:Lcom/android/keyguard/clock/OPTextClock;

    invoke-static {v5}, Lcom/android/keyguard/clock/OPTextClock;->-get0(Lcom/android/keyguard/clock/OPTextClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 186
    return-void
.end method
