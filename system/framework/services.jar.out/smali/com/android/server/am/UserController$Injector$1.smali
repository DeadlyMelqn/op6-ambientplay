.class Lcom/android/server/am/UserController$Injector$1;
.super Lcom/android/server/am/PreBootBroadcaster;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController$Injector;->sendPreBootBroadcast(IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/UserController$Injector;

.field final synthetic val$onFinish:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController$Injector;Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/UserController$Injector;
    .param p2, "$anonymous0"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "$anonymous1"    # I
    .param p4, "$anonymous2"    # Lcom/android/internal/util/ProgressReporter;
    .param p5, "$anonymous3"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/UserController$Injector$1;->this$1:Lcom/android/server/am/UserController$Injector;

    iput-object p6, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    .line 1806
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/am/PreBootBroadcaster;-><init>(Lcom/android/server/am/ActivityManagerService;ILcom/android/internal/util/ProgressReporter;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/server/am/UserController$Injector$1;->val$onFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1810
    return-void
.end method