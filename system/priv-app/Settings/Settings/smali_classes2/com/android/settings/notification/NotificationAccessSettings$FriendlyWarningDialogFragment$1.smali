.class Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$parent:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p3, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    .line 157
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
    .line 159
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAccessSettings;->-wrap0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    .line 160
    return-void
.end method
