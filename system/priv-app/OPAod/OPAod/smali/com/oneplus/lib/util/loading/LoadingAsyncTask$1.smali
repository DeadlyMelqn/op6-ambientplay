.class Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;
.super Lcom/oneplus/lib/util/loading/LoadingHelper;
.source "LoadingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/util/loading/LoadingAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/util/loading/LoadingAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    .local p1, "this$0":Lcom/oneplus/lib/util/loading/LoadingAsyncTask;, "Lcom/oneplus/lib/util/loading/LoadingAsyncTask<TParam;TProgress;TResult;>;"
    iput-object p1, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    .line 38
    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingHelper;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 1
    .param p1, "progreeView"    # Ljava/lang/Object;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->hideProgree(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/util/loading/LoadingAsyncTask$1;->this$0:Lcom/oneplus/lib/util/loading/LoadingAsyncTask;

    invoke-virtual {v0}, Lcom/oneplus/lib/util/loading/LoadingAsyncTask;->showProgree()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
