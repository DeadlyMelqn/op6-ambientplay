.class Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onSetPrintJobStateResult(ZI)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "sequence"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->-wrap0(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;Ljava/lang/Object;I)V

    .line 778
    return-void
.end method