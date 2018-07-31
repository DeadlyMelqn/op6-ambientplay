.class Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;
.super Landroid/os/AsyncTask;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppNewVersionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 557
    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->mContext:Landroid/content/Context;

    .line 558
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 564
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 567
    :cond_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "has_new_version_to_update"

    .line 566
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    .line 569
    .local v1, "systemHasUpdate":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->hasNewAppVersion()Z

    move-result v0

    .line 570
    .local v0, "appHasUpdate":Z
    if-nez v1, :cond_2

    .end local v0    # "appHasUpdate":Z
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 566
    .end local v1    # "systemHasUpdate":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "systemHasUpdate":Z
    goto :goto_0

    .restart local v0    # "appHasUpdate":Z
    :cond_2
    move v0, v2

    .line 570
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 559
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hasNewAppVersion()Z
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 584
    const/4 v6, 0x0

    .line 585
    .local v6, "count":I
    const/4 v7, 0x0

    .line 587
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "canInstall =?"

    .line 588
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 590
    .local v4, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 590
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 593
    .local v7, "cur":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 599
    :cond_0
    if-eqz v7, :cond_1

    .line 600
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 604
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-lez v6, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 596
    :catch_0
    move-exception v8

    .line 597
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    if-eqz v7, :cond_1

    .line 600
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 598
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 599
    if-eqz v7, :cond_2

    .line 600
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 598
    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 604
    goto :goto_1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "anyNewVersion"    # Ljava/lang/Boolean;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    const-string/jumbo v0, "DashboardSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Has updates? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get1(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/DashboardAdapter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setShowSystemUpgradeIcon(Z)V

    .line 581
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 573
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$AppNewVersionLoader;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
