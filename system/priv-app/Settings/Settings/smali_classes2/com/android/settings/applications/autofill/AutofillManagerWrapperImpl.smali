.class public Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;
.super Ljava/lang/Object;
.source "AutofillManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/autofill/AutofillManagerWrapper;


# instance fields
.field private final mAfm:Landroid/view/autofill/AutofillManager;


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 0
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    .line 29
    return-void
.end method


# virtual methods
.method public hasAutofillFeature()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    return v0
.end method

.method public isAutofillSupported()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/autofill/AutofillManagerWrapperImpl;->mAfm:Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    return v0
.end method
