.class Lcom/android/server/pm/UserManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->finishRemoveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$6;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$6;->val$userHandle:I

    .line 2796
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2804
    new-instance v0, Lcom/android/server/pm/UserManagerService$6$1;

    iget v1, p0, Lcom/android/server/pm/UserManagerService$6;->val$userHandle:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/UserManagerService$6$1;-><init>(Lcom/android/server/pm/UserManagerService$6;I)V

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$6$1;->start()V

    .line 2813
    return-void
.end method