.class Lcom/android/internal/util/ConcurrentUtils$1$1;
.super Ljava/lang/Thread;
.source "ConcurrentUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ConcurrentUtils$1;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/ConcurrentUtils$1;

.field final synthetic val$linuxThreadPriority:I

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ConcurrentUtils$1;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/util/ConcurrentUtils$1;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->this$1:Lcom/android/internal/util/ConcurrentUtils$1;

    iput p3, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$linuxThreadPriority:I

    iput-object p4, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$linuxThreadPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/util/ConcurrentUtils$1$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    return-void
.end method
