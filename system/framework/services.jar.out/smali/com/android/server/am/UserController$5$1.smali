.class Lcom/android/server/am/UserController$5$1;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController$5;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/UserController$5;

.field final synthetic val$userId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController$5;ILcom/android/server/am/UserState;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/UserController$5;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iput p2, p0, Lcom/android/server/am/UserController$5$1;->val$userId:I

    iput-object p3, p0, Lcom/android/server/am/UserController$5$1;->val$uss:Lcom/android/server/am/UserState;

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/server/am/UserController$5$1;->this$1:Lcom/android/server/am/UserController$5;

    iget-object v0, v0, Lcom/android/server/am/UserController$5;->this$0:Lcom/android/server/am/UserController;

    iget v1, p0, Lcom/android/server/am/UserController$5$1;->val$userId:I

    iget-object v2, p0, Lcom/android/server/am/UserController$5$1;->val$uss:Lcom/android/server/am/UserState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController;->finishUserStopping(ILcom/android/server/am/UserState;)V

    .line 636
    return-void
.end method