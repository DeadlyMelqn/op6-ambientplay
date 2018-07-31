.class Landroid/app/InstantAppResolverService$1;
.super Landroid/app/IInstantAppResolver$Stub;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/InstantAppResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/InstantAppResolverService;


# direct methods
.method constructor <init>(Landroid/app/InstantAppResolverService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/InstantAppResolverService;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    .line 90
    invoke-direct {p0}, Landroid/app/IInstantAppResolver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public getInstantAppIntentFilterList([ILjava/lang/String;Ljava/lang/String;Landroid/os/IRemoteCallback;)V
    .locals 4
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "hostName"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 109
    invoke-static {}, Landroid/app/InstantAppResolverService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Phase2 called; posting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 113
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 114
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 115
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 116
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 117
    iget-object v1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    iget-object v1, v1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 118
    const/4 v2, 0x2

    .line 117
    invoke-virtual {v1, v2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 119
    return-void
.end method

.method public getInstantAppResolveInfoList([ILjava/lang/String;ILandroid/os/IRemoteCallback;)V
    .locals 4
    .param p1, "digestPrefix"    # [I
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "sequence"    # I
    .param p4, "callback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 94
    invoke-static {}, Landroid/app/InstantAppResolverService;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string/jumbo v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] Phase1 called; posting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 98
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 99
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 100
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Landroid/app/InstantAppResolverService$1;->this$0:Landroid/app/InstantAppResolverService;

    iget-object v1, v1, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    .line 102
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v1, v2, p3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method
