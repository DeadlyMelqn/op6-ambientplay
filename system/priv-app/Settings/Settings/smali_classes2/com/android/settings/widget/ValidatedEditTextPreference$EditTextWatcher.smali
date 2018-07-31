.class Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;
.super Ljava/lang/Object;
.source "ValidatedEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ValidatedEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/ValidatedEditTextPreference;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/widget/ValidatedEditTextPreference;
    .param p2, "-this1"    # Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 105
    iget-object v3, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 106
    .local v1, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->-get0(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 107
    iget-object v3, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 108
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v3}, Lcom/android/settings/widget/ValidatedEditTextPreference;->-get0(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result v2

    .line 109
    .local v2, "valid":Z
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "valid":Z
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 97
    return-void
.end method
