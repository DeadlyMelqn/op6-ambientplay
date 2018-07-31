.class public final Lcom/android/settings/ActiveNetworkScorerDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "ActiveNetworkScorerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActiveNetScorerDlg"


# instance fields
.field private mNewPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "ActiveNetScorerDlg"

    const-string/jumbo v1, "Can only set scorer for owner/system user."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v2

    .line 111
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 62
    :pswitch_1
    const-string/jumbo v1, "network_score"

    invoke-virtual {p0, v1}, Lcom/android/settings/ActiveNetworkScorerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkScoreManager;

    .line 63
    .local v0, "nsm":Landroid/net/NetworkScoreManager;
    iget-object v1, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ActiveNetworkScorerDialog;->setResult(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ActiveNetworkScorerDialog;->mNewPackageName:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->buildDialog()Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/ActiveNetworkScorerDialog;->finish()V

    .line 55
    :cond_0
    return-void
.end method
