.class Lcom/android/systemui/qs/QSBtFooter$1;
.super Landroid/content/BroadcastReceiver;
.source "QSBtFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSBtFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSBtFooter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSBtFooter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/QSBtFooter;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSBtFooter$1;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    .line 605
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 608
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 611
    const-string/jumbo v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 609
    if-eqz v2, :cond_2

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter$1;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v2}, Lcom/android/systemui/qs/QSBtFooter;->-wrap4(Lcom/android/systemui/qs/QSBtFooter;)V

    .line 622
    :cond_1
    :goto_0
    return-void

    .line 615
    :cond_2
    const-string/jumbo v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 616
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "state":Ljava/lang/String;
    sget-boolean v2, Lcom/android/systemui/qs/QSBtFooter;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "QSBtFooter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Phone state changed intent, state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter$1;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSBtFooter;->-set0(Lcom/android/systemui/qs/QSBtFooter;Z)Z

    .line 619
    iget-object v2, p0, Lcom/android/systemui/qs/QSBtFooter$1;->this$0:Lcom/android/systemui/qs/QSBtFooter;

    invoke-static {v2}, Lcom/android/systemui/qs/QSBtFooter;->-wrap4(Lcom/android/systemui/qs/QSBtFooter;)V

    goto :goto_0
.end method
