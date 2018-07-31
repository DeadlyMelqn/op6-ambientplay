.class Lcom/android/settings/dashboard/SummaryLoader$3;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/SummaryLoader;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;

.field final synthetic val$filter:Landroid/content/IntentFilter;

.field final synthetic val$receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/SummaryLoader;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    iput-object p2, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->val$receiver:Landroid/content/BroadcastReceiver;

    iput-object p3, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->val$filter:Landroid/content/IntentFilter;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get2(Lcom/android/settings/dashboard/SummaryLoader;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get3(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->val$receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1}, Lcom/android/settings/dashboard/SummaryLoader;->-get0(Lcom/android/settings/dashboard/SummaryLoader;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->val$receiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$3;->val$filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SummaryLoader"

    const-string/jumbo v2, "Problem in registerReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
