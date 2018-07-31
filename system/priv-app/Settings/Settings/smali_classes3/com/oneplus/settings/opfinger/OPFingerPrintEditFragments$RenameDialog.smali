.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;
.super Landroid/app/DialogFragment;
.source "OPFingerPrintEditFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenameDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 451
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 452
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 457
    const v4, 0x7f0400eb

    .line 456
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 459
    .local v2, "renameView":Landroid/view/View;
    const v3, 0x7f0a0224

    .line 458
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/OPEditText;

    .line 460
    .local v1, "renameEdit":Lcom/oneplus/lib/widget/OPEditText;
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->-get2(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/OPEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 461
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/OPEditText;->requestFocus()Z

    .line 462
    new-instance v3, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;Lcom/oneplus/lib/widget/OPEditText;)V

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/widget/OPEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 486
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 486
    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    const v4, 0x7f0f0ee1

    .line 486
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 490
    const/4 v4, 0x1

    .line 486
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 491
    const v4, 0x7f0f06c0

    .line 486
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 493
    new-instance v4, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$2;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;)V

    .line 492
    const v5, 0x7f0f0235

    .line 486
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 502
    .local v0, "mRenameDialog":Landroid/app/AlertDialog;
    return-object v0
.end method
