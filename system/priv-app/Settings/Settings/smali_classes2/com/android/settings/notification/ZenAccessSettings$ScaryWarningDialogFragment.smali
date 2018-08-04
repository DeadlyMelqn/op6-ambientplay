.class public Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# static fields
.field static final KEY_LABEL:Ljava/lang/String; = "l"

.field static final KEY_PKG:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x22a

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 255
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 257
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "p"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "label":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 261
    const/4 v7, 0x0

    aput-object v1, v6, v7

    .line 260
    const v7, 0x7f0f10ae

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 263
    const v6, 0x7f0f10af

    .line 262
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "summary":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 269
    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;Ljava/lang/String;)V

    .line 268
    const v7, 0x7f0f05e4

    .line 264
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 275
    new-instance v6, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;)V

    .line 274
    const v7, 0x7f0f05e5

    .line 264
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "l"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local p1    # "pkg":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 250
    return-object p0

    .line 248
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method