.class Lcom/android/server/am/ActivityManagerService$21$1;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerService$21;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$21;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerService$21;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$aboveSystem:Z

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$annotation:Ljava/lang/String;

    .line 14693
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 14696
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$21$1;->this$1:Lcom/android/server/am/ActivityManagerService$21;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$21;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$aboveSystem:Z

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$21$1;->val$annotation:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 14697
    return-void
.end method
