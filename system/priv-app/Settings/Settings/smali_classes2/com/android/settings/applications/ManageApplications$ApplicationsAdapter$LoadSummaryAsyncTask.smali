.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSummaryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->this$1:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1589
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->packageName:Ljava/lang/String;

    .line 1590
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1592
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1594
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 1595
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->this$1:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1598
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 1600
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1601
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->this$1:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->-get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;

    move-result-object v1

    .line 1602
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->packageName:Ljava/lang/String;

    .line 1601
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1603
    .local v0, "summaryView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1604
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->this$1:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->addSummaryToCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    return-void
.end method
