.class public Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPReceiveNotificationsPreference.java"


# static fields
.field private static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field private static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field private static final KEY_RECEIVE_NOTIFICATIONS_TYPE:I = 0x7

.field private static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final PUSH_SWITCH_ACTION:Ljava/lang/String; = "net.oneplus.push.action.SWITCH_CHANGED"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->initViews(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->initViews(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->initViews(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->mContext:Landroid/content/Context;

    .line 47
    const v0, 0x7f04011c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->setLayoutResource(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 54
    const v5, 0x7f0a0277

    .line 53
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 55
    .local v1, "RecevieNotificationsLayout":Landroid/widget/LinearLayout;
    new-instance v5, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$1;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$1;-><init>(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v5, 0x7f0a0279

    .line 66
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 70
    .local v3, "mCheckBox":Landroid/widget/CheckBox;
    :try_start_0
    iget-object v5, p0, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 71
    const-string/jumbo v6, "oem_receive_notifications"

    .line 69
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_0

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    const v4, 0x7f0a0278

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 76
    .local v0, "ReceiveNotifications":Landroid/widget/LinearLayout;
    new-instance v4, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;

    invoke-direct {v4, p0, v3}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$2;-><init>(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v4, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/others/OPReceiveNotificationsPreference$3;-><init>(Lcom/oneplus/settings/others/OPReceiveNotificationsPreference;)V

    .line 84
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    return-void

    .line 69
    .end local v0    # "ReceiveNotifications":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
