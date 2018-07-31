.class final Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_REVOKE_APP_PERMISSION:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;


# direct methods
.method public constructor <init>(Landroid/permissionpresenterservice/RuntimePermissionPresenterService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/permissionpresenterservice/RuntimePermissionPresenterService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 115
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 119
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 121
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 122
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "packageName":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/RemoteCallback;

    .line 124
    .local v1, "callback":Landroid/os/RemoteCallback;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 126
    iget-object v6, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v6, v2}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onGetAppPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 127
    .local v4, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    .line 128
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v5, "result":Landroid/os/Bundle;
    const-string/jumbo v6, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 131
    invoke-virtual {v1, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 133
    .end local v5    # "result":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v1, v7}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 137
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "callback":Landroid/os/RemoteCallback;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 138
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 139
    .restart local v2    # "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 140
    .local v3, "permissionName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 142
    iget-object v6, p0, Landroid/permissionpresenterservice/RuntimePermissionPresenterService$MyHandler;->this$0:Landroid/permissionpresenterservice/RuntimePermissionPresenterService;

    invoke-virtual {v6, v2, v3}, Landroid/permissionpresenterservice/RuntimePermissionPresenterService;->onRevokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
