.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 1
    .local p1, "this$0":Landroid/support/v4/content/ModernAsyncTask;, "Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    .line 150
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 8

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "result":Ljava/lang/Object;, "TResult;"
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v5, v3}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v3    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v4

    .line 165
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    .line 166
    const-string/jumbo v6, "An error occurred while executing doInBackground()"

    .line 165
    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 162
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v2

    .line 160
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v5, Ljava/lang/RuntimeException;

    .line 161
    const-string/jumbo v6, "An error occurred while executing doInBackground()"

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    .line 160
    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 157
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "AsyncTask"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
