.class Lcom/android/settings/MasterClearConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mOldOrientation:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/settings/MasterClearConfirm$1;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/MasterClearConfirm$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iput-object p2, p0, Lcom/android/settings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 83
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 96
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->-wrap0(Lcom/android/settings/MasterClearConfirm;)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm$1;->-wrap0(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mOldOrientation:I

    .line 110
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 111
    return-void
.end method
