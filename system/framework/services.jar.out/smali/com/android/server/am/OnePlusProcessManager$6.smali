.class Lcom/android/server/am/OnePlusProcessManager$6;
.super Ljava/lang/Object;
.source "OnePlusProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusProcessManager;->cancelNotificationsForUid(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$6;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iput p2, p0, Lcom/android/server/am/OnePlusProcessManager$6;->val$uid:I

    .line 2467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2470
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$6;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget v2, p0, Lcom/android/server/am/OnePlusProcessManager$6;->val$uid:I

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->-wrap7(Lcom/android/server/am/OnePlusProcessManager;I)Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->cancelNotificationsWithPkg(Ljava/lang/String;I)V

    .line 2472
    return-void
.end method
