.class public Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;
.super Ljava/lang/Object;
.source "AutomaticStorageManagerSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final STORAGE_MANAGER_ENABLED_BY_DEFAULT_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v7/preference/Preference;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "daysToRetainPreference"    # Landroid/support/v7/preference/Preference;
    .param p4, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SwitchBar;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 52
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    .line 53
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager;

    iput-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 55
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->initializeCheckedStatus()V

    .line 56
    return-void
.end method

.method private initializeCheckedStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 62
    const-string/jumbo v2, "automatic_storage_manager_enabled"

    .line 60
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 65
    .local v0, "isStorageManagerChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 67
    return-void

    .line 60
    .end local v0    # "isStorageManagerChecked":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isStorageManagerChecked":Z
    goto :goto_0
.end method

.method private maybeShowWarning()V
    .locals 3

    .prologue
    .line 90
    const-string/jumbo v1, "ro.storage_manager.enabled"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->newInstance()Lcom/android/settings/deletionhelper/ActivationWarningFragment;

    move-result-object v0

    .line 94
    .local v0, "fragment":Lcom/android/settings/deletionhelper/ActivationWarningFragment;
    iget-object v1, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "ActivationWarningFragment"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deletionhelper/ActivationWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mDaysToRetainPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 75
    const-string/jumbo v2, "automatic_storage_manager_enabled"

    .line 76
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 73
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->maybeShowWarning()V

    .line 81
    :cond_0
    return-void

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 86
    return-void
.end method
