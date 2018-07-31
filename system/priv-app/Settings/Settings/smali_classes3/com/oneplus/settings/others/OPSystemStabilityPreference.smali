.class public Lcom/oneplus/settings/others/OPSystemStabilityPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPSystemStabilityPreference.java"


# static fields
.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_SYSTEM_STABILITY_TYPE:I = 0x6

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/others/OPSystemStabilityPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->initViews(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->initViews(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->initViews(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->mContext:Landroid/content/Context;

    .line 49
    const v0, 0x7f040130

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->setLayoutResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 56
    const v5, 0x7f0a0282

    .line 55
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .local v0, "SystemStabilityLayout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/oneplus/settings/others/OPSystemStabilityPreference$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/others/OPSystemStabilityPreference$1;-><init>(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v5, 0x7f0a0284

    .line 68
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 72
    .local v2, "mCheckbox":Landroid/widget/CheckBox;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/others/OPSystemStabilityPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 73
    const-string/jumbo v6, "oem_join_stability_plan_settings"

    .line 71
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    const v4, 0x7f0a0283

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 78
    .local v3, "systemStabilityLayout":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/oneplus/settings/others/OPSystemStabilityPreference$2;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/settings/others/OPSystemStabilityPreference$2;-><init>(Lcom/oneplus/settings/others/OPSystemStabilityPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v4, Lcom/oneplus/settings/others/OPSystemStabilityPreference$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/others/OPSystemStabilityPreference$3;-><init>(Lcom/oneplus/settings/others/OPSystemStabilityPreference;)V

    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    return-void

    .line 71
    .end local v3    # "systemStabilityLayout":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
