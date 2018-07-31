.class public Lcom/android/settings/dashboard/ExpandPreference;
.super Landroid/support/v7/preference/Preference;
.source "ExpandPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/ExpandPreference;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setLayoutResource(I)V

    .line 51
    const v0, 0x7f0201c4

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setIcon(I)V

    .line 52
    const v0, 0x7f0f0f79

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setTitle(I)V

    .line 53
    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/ExpandPreference;->setOrder(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 60
    return-void
.end method
