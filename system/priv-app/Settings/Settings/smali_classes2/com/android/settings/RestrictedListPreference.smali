.class public Lcom/android/settings/RestrictedListPreference;
.super Lcom/android/settings/CustomListPreference;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;,
        Lcom/android/settings/RestrictedListPreference$RestrictedItem;,
        Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mRestrictedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/RestrictedListPreference$RestrictedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/RestrictedListPreference;Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/RestrictedListPreference;
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/RestrictedListPreference;->getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 49
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/CustomListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 56
    return-void
.end method

.method private getRestrictedItemForEntryValue(Ljava/lang/CharSequence;)Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    .locals 4
    .param p1, "entryValue"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 111
    if-nez p1, :cond_0

    .line 112
    return-object v3

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .line 115
    .local v0, "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v2, v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    return-object v0

    .line 119
    .end local v0    # "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addRestrictedItem(Lcom/android/settings/RestrictedListPreference$RestrictedItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public clearRestrictedItems()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method

.method protected createListAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v3

    .line 123
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;-><init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public getSelectedValuePos()I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "selectedValue":Ljava/lang/String;
    if-nez v1, :cond_0

    const/4 v0, -0x1

    .line 131
    .local v0, "selectedIndex":I
    :goto_0
    return v0

    .line 130
    .end local v0    # "selectedIndex":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/RestrictedListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "selectedIndex":I
    goto :goto_0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public isRestrictedForEntry(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "entry"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 91
    if-nez p1, :cond_0

    .line 92
    return v3

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RestrictedListPreference;->mRestrictedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;

    .line 95
    .local v0, "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    iget-object v2, v0, Lcom/android/settings/RestrictedListPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const/4 v2, 0x1

    return v2

    .line 99
    .end local v0    # "item":Lcom/android/settings/RestrictedListPreference$RestrictedItem;
    :cond_2
    return v3
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 62
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->createListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 138
    return-void
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    invoke-super {p0}, Lcom/android/settings/CustomListPreference;->performClick()V

    .line 69
    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->notifyChanged()V

    .line 84
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/settings/RestrictedListPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 75
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference;->setEnabled(Z)V

    .line 78
    return-void
.end method
