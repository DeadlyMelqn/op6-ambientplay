.class public Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# static fields
.field static final KEY_COMPONENT:Ljava/lang/String; = "c"

.field static final KEY_LABEL:Ljava/lang/String; = "l"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x228

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 146
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v5, "l"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v5, "c"

    .line 147
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 149
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 151
    .local v3, "parent":Lcom/android/settings/notification/NotificationAccessSettings;
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    .line 152
    const/4 v7, 0x0

    aput-object v2, v6, v7

    const v7, 0x7f0f0f99

    .line 151
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "summary":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 157
    new-instance v6, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    .line 156
    const v7, 0x7f0f0f9a

    .line 153
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 163
    new-instance v6, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;)V

    .line 162
    const v7, 0x7f0f0f9b

    .line 153
    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    .locals 3
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "target"    # Landroid/app/Fragment;

    .prologue
    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "l"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 134
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 135
    return-object p0
.end method
