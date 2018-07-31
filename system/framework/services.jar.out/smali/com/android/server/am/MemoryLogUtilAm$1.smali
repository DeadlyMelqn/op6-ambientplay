.class final Lcom/android/server/am/MemoryLogUtilAm$1;
.super Ljava/lang/Thread;
.source "MemoryLogUtilAm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MemoryLogUtilAm;->dumpInBackground(Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$TOP_APP:Ljava/lang/String;

.field final synthetic val$allProcList:Ljava/util/ArrayList;

.field final synthetic val$service:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/am/ActivityManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p2, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$allProcList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$TOP_APP:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 131
    iget-object v0, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$service:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/MemoryLogUtilAm;->doDumpCpuUsage(Lcom/android/server/am/ActivityManagerService;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$allProcList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/MemoryLogUtilAm$1;->val$TOP_APP:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/MemoryLogUtilAm;->doDump(Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/lang/String;

    .line 133
    return-void
.end method
