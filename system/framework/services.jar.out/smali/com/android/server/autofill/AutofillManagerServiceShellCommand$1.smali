.class Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "AutofillManagerServiceShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 174
    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 178
    return-void
.end method
