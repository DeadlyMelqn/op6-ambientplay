.class Lcom/oneplus/settings/receiver/SettingsReceiver$1;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/receiver/SettingsReceiver;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    iput-object p2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x3e7

    .line 178
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    const-string/jumbo v1, "com.oneplus.ifaaservice"

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    .line 186
    return-void
.end method
