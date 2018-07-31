.class public Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;
.super Landroid/app/Activity;
.source "AutofillPickerTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "currentService":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 47
    return-void

    .line 51
    :cond_0
    const-class v5, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 52
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 54
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 56
    return-void

    .line 60
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/applications/autofill/AutofillPickerActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const/high16 v6, 0x2000000

    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 62
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    .line 63
    .local v3, "newIntent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 65
    return-void
.end method
