.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

.field final synthetic val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;Lcom/oneplus/lib/widget/OPEditText;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->this$1:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog;

    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 484
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 478
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 468
    const-string/jumbo v0, " "

    if-ne p1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$RenameDialog$1;->val$renameEdit:Lcom/oneplus/lib/widget/OPEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/OPEditText;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :cond_0
    return-void
.end method
