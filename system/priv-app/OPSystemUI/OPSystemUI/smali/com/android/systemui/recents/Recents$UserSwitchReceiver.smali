.class Lcom/android/systemui/recents/Recents$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/Recents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$UserSwitchReceiver;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/Recents$UserSwitchReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/Recents;
    .param p2, "-this1"    # Lcom/android/systemui/recents/Recents$UserSwitchReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/Recents$UserSwitchReceiver;-><init>(Lcom/android/systemui/recents/Recents;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 900
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$UserSwitchReceiver;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/WhiteList;->init(Landroid/content/Context;)V

    .line 903
    :cond_0
    return-void
.end method
