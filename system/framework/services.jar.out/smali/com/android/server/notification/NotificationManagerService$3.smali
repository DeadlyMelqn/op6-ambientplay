.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1037
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1040
    const-string/jumbo v4, "android.os.action.SETTING_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1042
    :try_start_0
    const-string/jumbo v4, "setting_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "element":Ljava/lang/String;
    const-string/jumbo v4, "new_value"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    .local v2, "newValue":Ljava/lang/String;
    const-string/jumbo v4, "restored_from_sdk_int"

    const/4 v5, 0x0

    .line 1044
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1046
    .local v3, "restoredFromSdkInt":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get22(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v5

    .line 1046
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1048
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v5

    .line 1048
    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/android/server/notification/ConditionProviders;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/String;
    .end local v3    # "restoredFromSdkInt":I
    :cond_0
    :goto_0
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NotificationService"

    const-string/jumbo v5, "Cannot restore managed services from settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method