.class public Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
.super Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/autofill/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillPickerConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .line 107
    .local v0, "target":Lcom/android/settings/applications/autofill/DefaultAutofillPicker;
    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-get0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method
