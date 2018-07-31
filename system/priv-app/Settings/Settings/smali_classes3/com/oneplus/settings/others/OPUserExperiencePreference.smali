.class public Lcom/oneplus/settings/others/OPUserExperiencePreference;
.super Landroid/support/v7/preference/Preference;
.source "OPUserExperiencePreference.java"


# static fields
.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_USER_EXPERIENCE_TYPE:I = 0x5

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/others/OPUserExperiencePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/others/OPUserExperiencePreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->initViews(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->initViews(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->initViews(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference;->mContext:Landroid/content/Context;

    .line 46
    const v0, 0x7f040135

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPUserExperiencePreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 53
    const v5, 0x7f0a0287

    .line 52
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    .local v0, "UserExperienceLayout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/oneplus/settings/others/OPUserExperiencePreference$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/others/OPUserExperiencePreference$1;-><init>(Lcom/oneplus/settings/others/OPUserExperiencePreference;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v5, 0x7f0a0289

    .line 65
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 69
    .local v3, "experienceEheckbox":Landroid/widget/CheckBox;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/others/OPUserExperiencePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 70
    const-string/jumbo v6, "oem_join_user_plan_settings"

    .line 68
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    const v4, 0x7f0a0288

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "addUserExperience":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;

    invoke-direct {v4, p0, v3}, Lcom/oneplus/settings/others/OPUserExperiencePreference$2;-><init>(Lcom/oneplus/settings/others/OPUserExperiencePreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v4, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/others/OPUserExperiencePreference$3;-><init>(Lcom/oneplus/settings/others/OPUserExperiencePreference;)V

    .line 83
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    return-void

    .line 68
    .end local v1    # "addUserExperience":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
