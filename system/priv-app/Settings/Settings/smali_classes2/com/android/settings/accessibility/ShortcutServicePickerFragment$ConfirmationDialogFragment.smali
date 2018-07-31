.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ShortcutServicePickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# static fields
.field private static final EXTRA_KEY:Ljava/lang/String; = "extra_key"

.field private static final TAG:Ljava/lang/String; = "ConfirmationDialogFragment"


# instance fields
.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    .locals 3
    .param p0, "parent"    # Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 142
    new-instance v1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;-><init>()V

    .line 143
    .local v1, "fragment":Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "argument":Landroid/os/Bundle;
    const-string/jumbo v2, "extra_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 147
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->mToken:Landroid/os/IBinder;

    .line 148
    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 154
    const/16 v0, 0x270f

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 182
    .local v1, "fragment":Landroid/app/Fragment;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    instance-of v2, v1, Lcom/android/settings/applications/DefaultAppPickerFragment;

    if-eqz v2, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 184
    .local v0, "bundle":Landroid/os/Bundle;
    check-cast v1, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;

    .line 185
    .end local v1    # "fragment":Landroid/app/Fragment;
    const-string/jumbo v2, "extra_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->-wrap0(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V

    .line 187
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 160
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "extra_key"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 162
    .local v4, "serviceComponentName":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 163
    const-class v6, Landroid/view/accessibility/AccessibilityManager;

    .line 162
    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 164
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 166
    .local v2, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2, p0}, Lcom/android/settings/accessibility/AccessibilityServiceWarning;->createCapabilitiesDialog(Landroid/app/Activity;Landroid/accessibilityservice/AccessibilityServiceInfo;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v5

    return-object v5
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    .line 177
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 171
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 172
    return-void
.end method
