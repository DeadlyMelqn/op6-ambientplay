.class Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/autofill/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .line 125
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_applications_autofill_DefaultAutofillPicker$1_4575()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_autofill_DefaultAutofillPicker$1_4707()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_autofill_DefaultAutofillPicker$1_4847()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-get1(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-get1(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->-get1(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg$1;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    return-void
.end method
