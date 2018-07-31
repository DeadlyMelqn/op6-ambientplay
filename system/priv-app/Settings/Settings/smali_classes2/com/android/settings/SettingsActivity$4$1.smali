.class Lcom/android/settings/SettingsActivity$4$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsActivity$4;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SettingsActivity$4;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/Utils;->isLowStorage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 774
    .local v2, "indexStartTime":J
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v0

    .line 775
    .local v0, "index":Lcom/android/settings/search/Index;
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->setContext(Landroid/content/Context;)V

    .line 776
    invoke-virtual {v0}, Lcom/android/settings/search/Index;->update()V

    .line 778
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v1, v1, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity;->-get1(Lcom/android/settings/SettingsActivity;)Lcom/android/settings/search/DynamicIndexableContentMonitor;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/SettingsActivity$4$1;->this$1:Lcom/android/settings/SettingsActivity$4;

    iget-object v4, v4, Lcom/android/settings/SettingsActivity$4;->this$0:Lcom/android/settings/SettingsActivity;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/search/DynamicIndexableContentMonitor;->register(Landroid/app/Activity;I)V

    .line 785
    .end local v0    # "index":Lcom/android/settings/search/Index;
    .end local v2    # "indexStartTime":J
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    const-string/jumbo v1, "Settings"

    const-string/jumbo v4, "Cannot update the Indexer as we are running low on storage space!"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
