.class Lcom/android/server/job/controllers/AppIdleController$1;
.super Ljava/lang/Object;
.source "AppIdleController.java"

# interfaces
.implements Lcom/android/server/job/JobStore$JobStatusFunctor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/controllers/AppIdleController;->dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/AppIdleController;

.field final synthetic val$filterUid:I

.field final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/AppIdleController;ILjava/io/PrintWriter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/AppIdleController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/AppIdleController$1;->this$0:Lcom/android/server/job/controllers/AppIdleController;

    iput p2, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$filterUid:I

    iput-object p3, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public process(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 137
    iget v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$filterUid:I

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, "  #"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 142
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " from "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 146
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " RUNNABLE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/AppIdleController$1;->val$pw:Ljava/io/PrintWriter;

    const-string/jumbo v1, " WAITING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
