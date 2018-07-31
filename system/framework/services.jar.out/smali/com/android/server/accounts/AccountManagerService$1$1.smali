.class Lcom/android/server/accounts/AccountManagerService$1$1;
.super Ljava/lang/Object;
.source "AccountManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accounts/AccountManagerService$1;

.field final synthetic val$removedPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/accounts/AccountManagerService$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->-wrap18(Lcom/android/server/accounts/AccountManagerService;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->this$1:Lcom/android/server/accounts/AccountManagerService$1;

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$1$1;->val$removedPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->-wrap20(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V

    .line 314
    return-void
.end method
