.class Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$parent:Lcom/android/settings/utils/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Lcom/android/settings/utils/ManagedServiceSettings;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->this$1:Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$parent:Lcom/android/settings/utils/ManagedServiceSettings;

    iput-object p3, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$parent:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings;->enable(Landroid/content/ComponentName;)V

    .line 228
    return-void
.end method
