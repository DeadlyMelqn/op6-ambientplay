.class public Lcom/android/settingslib/RestrictedPreferenceHelper;
.super Ljava/lang/Object;
.source "RestrictedPreferenceHelper.java"


# instance fields
.field private mAttrUserRestriction:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field private mUseAdminDisabledSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 44
    iput-boolean v6, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    .line 51
    if-eqz p3, :cond_4

    .line 53
    sget-object v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference:[I

    .line 52
    invoke-virtual {p1, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_userRestriction:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 56
    .local v3, "userRestriction":Landroid/util/TypedValue;
    const/4 v1, 0x0

    .line 57
    .local v1, "data":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_0

    .line 58
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_1

    .line 59
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 64
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    move-object v4, v5

    :goto_1
    iput-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 66
    iget-object v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 67
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 66
    invoke-static {v4, v7, v8}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    iput-object v5, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    .line 69
    return-void

    .line 61
    .restart local v1    # "data":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .local v1, "data":Ljava/lang/CharSequence;
    goto :goto_0

    .line 64
    .end local v1    # "data":Ljava/lang/CharSequence;
    :cond_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 73
    :cond_3
    sget v4, Lcom/android/settingslib/R$styleable;->RestrictedPreference_useAdminDisabledSummary:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 74
    .local v2, "useAdminDisabledSummary":Landroid/util/TypedValue;
    if-eqz v2, :cond_4

    .line 76
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    .line 77
    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    .line 75
    :goto_2
    iput-boolean v4, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 80
    .end local v0    # "attributes":Landroid/content/res/TypedArray;
    .end local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .end local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_4
    return-void

    .restart local v0    # "attributes":Landroid/content/res/TypedArray;
    .restart local v2    # "useAdminDisabledSummary":Landroid/util/TypedValue;
    .restart local v3    # "userRestriction":Landroid/util/TypedValue;
    :cond_5
    move v4, v6

    .line 77
    goto :goto_2

    :cond_6
    move v4, v6

    .line 76
    goto :goto_2
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled(Ljava/lang/String;I)V
    .locals 2
    .param p1, "userRestriction"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 139
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 140
    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    return v0
.end method

.method public onAttachedToHierarchy()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mAttrUserRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x0

    .line 86
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    :cond_0
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    if-eqz v2, :cond_1

    .line 90
    const v2, 0x1020010

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    .local v1, "summaryView":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 93
    sget v3, Lcom/android/settingslib/R$string;->disabled_by_admin_summary_text:I

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    .local v0, "disabledText":Ljava/lang/CharSequence;
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0    # "disabledText":Ljava/lang/CharSequence;
    .end local v1    # "summaryView":Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 96
    .restart local v0    # "disabledText":Ljava/lang/CharSequence;
    .restart local v1    # "summaryView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z
    .locals 4
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 150
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 151
    .local v1, "disabled":Z
    :goto_0
    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "changed":Z
    iget-boolean v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    if-eq v2, v1, :cond_0

    .line 154
    iput-boolean v1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mDisabledByAdmin:Z

    .line 155
    const/4 v0, 0x1

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mPreference:Landroid/support/v7/preference/Preference;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 158
    return v0

    .line 150
    .end local v0    # "changed":Z
    .end local v1    # "disabled":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "disabled":Z
    goto :goto_0
.end method

.method public useAdminDisabledSummary(Z)V
    .locals 0
    .param p1, "useSummary"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mUseAdminDisabledSummary:Z

    .line 106
    return-void
.end method
