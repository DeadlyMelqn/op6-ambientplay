.class Landroid/app/timezone/RulesManager$CallbackWrapper;
.super Landroid/app/timezone/ICallback$Stub;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/timezone/RulesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field final mCallback:Landroid/app/timezone/Callback;

.field final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/app/timezone/RulesManager;


# direct methods
.method constructor <init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/timezone/RulesManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Landroid/app/timezone/Callback;

    .prologue
    .line 170
    iput-object p1, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->this$0:Landroid/app/timezone/RulesManager;

    invoke-direct {p0}, Landroid/app/timezone/ICallback$Stub;-><init>()V

    .line 171
    iput-object p3, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method


# virtual methods
.method synthetic lambda$-android_app_timezone_RulesManager$CallbackWrapper_7810(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mCallback:Landroid/app/timezone/Callback;

    invoke-virtual {v0, p1}, Landroid/app/timezone/Callback;->onFinished(I)V

    return-void
.end method

.method public onFinished(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCallback.onFinished(status), status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Landroid/app/timezone/RulesManager$CallbackWrapper;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;

    invoke-direct {v1, p1, p0}, Landroid/app/timezone/-$Lambda$XGnGFnwDfPWgxse09CN983EaD_Q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method
