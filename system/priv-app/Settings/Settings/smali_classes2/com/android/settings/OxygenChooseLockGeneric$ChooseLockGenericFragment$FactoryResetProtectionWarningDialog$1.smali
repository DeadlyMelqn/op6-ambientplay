.class Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;
.super Ljava/lang/Object;
.source "OxygenChooseLockGeneric.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$2:Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    iput-object p2, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->val$args:Landroid/os/Bundle;

    .line 936
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->this$2:Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-virtual {v0}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;

    .line 941
    iget-object v1, p0, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$1;->val$args:Landroid/os/Bundle;

    const-string/jumbo v2, "unlockMethodToSet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-static {v0, v1}, Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;->-wrap0(Lcom/android/settings/OxygenChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 942
    return-void
.end method