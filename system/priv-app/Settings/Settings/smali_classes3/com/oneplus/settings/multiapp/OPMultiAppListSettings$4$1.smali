.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    iput p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->val$position:I

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 5
    .param p1, "shown"    # Z

    .prologue
    .line 180
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 181
    .local v0, "remsg":Landroid/os/Message;
    const/16 v2, 0x58

    iput v2, v0, Landroid/os/Message;->what:I

    .line 182
    iget v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->val$position:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 183
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    iget-object v2, v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get10(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    iget-object v2, v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 185
    const-string/jumbo v3, "notification_badging"

    const/4 v4, 0x1

    .line 184
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 186
    .local v1, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;

    iget-object v2, v2, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-get3(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 187
    const-string/jumbo v3, "notification_badging"

    const/16 v4, 0x3e7

    .line 186
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 188
    return-void
.end method
