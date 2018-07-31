.class Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiDisableRunnable"
.end annotation


# instance fields
.field dValue:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiEnabler;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->dValue:Z

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiEnabler;
    .param p2, "value"    # Z

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->dValue:Z

    .line 216
    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->dValue:Z

    .line 217
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->-get3(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->-get3(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->-get3(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->dValue:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->-get2(Lcom/android/settings/wifi/WifiEnabler;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiEnabler;->-get1(Lcom/android/settings/wifi/WifiEnabler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f081a

    .line 230
    const/4 v2, 0x0

    .line 229
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    :cond_1
    return-void
.end method

.method public setValue(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler$WifiDisableRunnable;->dValue:Z

    .line 221
    return-void
.end method
