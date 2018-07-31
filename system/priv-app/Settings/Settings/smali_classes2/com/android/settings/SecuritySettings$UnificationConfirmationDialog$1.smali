.class Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

.field final synthetic val$compliant:Z

.field final synthetic val$parentFragment:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;ZLcom/android/settings/SecuritySettings;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->this$1:Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog;

    iput-boolean p2, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->val$compliant:Z

    iput-object p3, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/SecuritySettings;

    .line 1883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->val$compliant:Z

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->-wrap2(Lcom/android/settings/SecuritySettings;)V

    .line 1891
    :goto_0
    return-void

    .line 1889
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/SecuritySettings;

    invoke-static {v0}, Lcom/android/settings/SecuritySettings;->-wrap3(Lcom/android/settings/SecuritySettings;)V

    goto :goto_0
.end method
