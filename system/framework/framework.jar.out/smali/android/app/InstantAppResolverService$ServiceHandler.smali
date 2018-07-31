.class final Landroid/app/InstantAppResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/InstantAppResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_INSTANT_APP_INTENT_FILTER:I = 0x2

.field public static final MSG_GET_INSTANT_APP_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method public constructor <init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/InstantAppResolverService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 168
    iput-object p1, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    .line 176
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 200
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 178
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 179
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    .line 180
    .local v2, "callback":Landroid/os/IRemoteCallback;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    .line 181
    .local v3, "digestPrefix":[I
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 182
    .local v6, "token":Ljava/lang/String;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 183
    .local v5, "sequence":I
    iget-object v7, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 185
    new-instance v8, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    invoke-direct {v8, v5, v2}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    .line 183
    invoke-virtual {v7, v3, v6, v8}, Landroid/app/InstantAppResolverService;->_onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    .line 203
    .end local v5    # "sequence":I
    :goto_0
    return-void

    .line 189
    .end local v1    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "callback":Landroid/os/IRemoteCallback;
    .end local v3    # "digestPrefix":[I
    .end local v6    # "token":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    .line 190
    .restart local v1    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    .line 191
    .restart local v2    # "callback":Landroid/os/IRemoteCallback;
    iget-object v3, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [I

    .line 192
    .restart local v3    # "digestPrefix":[I
    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 193
    .restart local v6    # "token":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, "hostName":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/InstantAppResolverService$ServiceHandler;->this$0:Landroid/app/InstantAppResolverService;

    .line 196
    new-instance v8, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v2}, Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;-><init>(ILandroid/os/IRemoteCallback;)V

    .line 194
    invoke-virtual {v7, v3, v6, v4, v8}, Landroid/app/InstantAppResolverService;->_onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
