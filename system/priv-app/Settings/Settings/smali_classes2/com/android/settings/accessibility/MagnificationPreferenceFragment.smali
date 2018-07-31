.class public final Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MagnificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;
    }
.end annotation


# static fields
.field private static final MAGNIFICATION_COMPONENT_ID:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field private static final MAGNIFICATION_GESTURES_PREFERENCE_SCREEN_KEY:Ljava/lang/String; = "screen_magnification_gestures_preference_screen"

.field private static final MAGNIFICATION_NAVBAR_PREFERENCE_SCREEN_KEY:Ljava/lang/String; = "screen_magnification_navbar_preference_screen"

.field private static final PREFERENCE_TITLE_KEY:Ljava/lang/String; = "magnification_preference_screen_title"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLaunchedFromSuw:Z

.field private mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

.field private mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;-><init>()V

    .line 214
    sput-object v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    .line 43
    return-void
.end method

.method static getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 160
    const-string/jumbo v8, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 161
    return-object v11

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 164
    const-string/jumbo v9, "accessibility_display_magnification_navbar_enabled"

    .line 163
    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_1

    .line 165
    return-object v11

    .line 168
    :cond_1
    const-string/jumbo v8, "accessibility"

    .line 167
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 169
    .local v1, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 170
    const-string/jumbo v9, "accessibility_button_target_component"

    .line 169
    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "assignedId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    .line 172
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 176
    .local v2, "assignedComponentName":Landroid/content/ComponentName;
    const/4 v8, -0x1

    .line 175
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, "activeServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 178
    .local v7, "serviceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 179
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 180
    .local v6, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 181
    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 181
    invoke-virtual {v8, v9}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 183
    .local v4, "assignedServiceName":Ljava/lang/CharSequence;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    .line 185
    aput-object v4, v8, v10

    .line 184
    const v9, 0x7f0f1215

    .line 183
    invoke-virtual {p1, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 178
    .end local v4    # "assignedServiceName":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "activeServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .end local v2    # "assignedComponentName":Landroid/content/ComponentName;
    .end local v5    # "i":I
    .end local v6    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v7    # "serviceCount":I
    :cond_3
    return-object v11
.end method

.method private handleMagnificationGesturesPreferenceScreenClick()V
    .locals 3

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 138
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 139
    const-string/jumbo v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method private handleMagnificationNavbarPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "preference_key"

    .line 145
    const-string/jumbo v4, "accessibility_display_magnification_navbar_enabled"

    .line 144
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v3, "title"

    .line 147
    const v4, 0x7f0f120f

    .line 146
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v3, "summary"

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    const v5, 0x7f0f1217

    .line 149
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 148
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 151
    const-string/jumbo v3, "checked"

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 153
    const-string/jumbo v5, "accessibility_display_magnification_navbar_enabled"

    .line 152
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 151
    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    const-string/jumbo v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    return-void

    :cond_0
    move v1, v2

    .line 152
    goto :goto_0
.end method

.method static isApplicable(Landroid/content/res/Resources;)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 211
    const v0, 0x1120099

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 5
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 193
    const-string/jumbo v2, "preference_key"

    .line 194
    const-string/jumbo v3, "accessibility_display_magnification_enabled"

    .line 193
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v2, "title"

    .line 196
    const v3, 0x7f0f1210

    .line 195
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v2, "summary"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 198
    const v4, 0x7f0f0bf5

    .line 197
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 199
    const-string/jumbo v2, "checked"

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 201
    const-string/jumbo v4, "accessibility_display_magnification_enabled"

    .line 200
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 199
    :goto_0
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    const-string/jumbo v0, "video_resource"

    .line 203
    const/high16 v1, 0x7f090000

    .line 202
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    return-void

    :cond_0
    move v0, v1

    .line 200
    goto :goto_0
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-nez v1, :cond_3

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 124
    .local v0, "enabled":Z
    :goto_0
    if-eqz v0, :cond_2

    const v1, 0x7f0f0c0a

    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 134
    .end local v0    # "enabled":Z
    :cond_0
    :goto_2
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 125
    :cond_2
    const v1, 0x7f0f0c0b

    goto :goto_1

    .line 127
    .end local v0    # "enabled":Z
    :cond_3
    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const v1, 0x7f0f0bf4

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 129
    :cond_4
    const-string/jumbo v1, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const v1, 0x7f0f1214

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x39a

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 64
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->addPreferencesFromResource(I)V

    .line 66
    const-string/jumbo v0, "screen_magnification_gestures_preference_screen"

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    .line 67
    const-string/jumbo v0, "screen_magnification_navbar_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    .line 69
    const-string/jumbo v0, "screen_magnification_navbar_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 104
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-eqz v0, :cond_0

    .line 107
    const-class v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->handleMagnificationGesturesPreferenceScreenClick()V

    .line 111
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 112
    return v1

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->handleMagnificationNavbarPreferenceScreenClick()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    invoke-super {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 116
    return v1

    .line 118
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0bf3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 87
    const-string/jumbo v0, "accessibility_display_magnification_enabled"

    .line 88
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationGesturesPreference:Landroid/support/v7/preference/Preference;

    .line 87
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "accessibility_display_magnification_navbar_enabled"

    .line 92
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mMagnificationNavbarPreference:Landroid/support/v7/preference/Preference;

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "from_suw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    .line 81
    :cond_0
    return-void
.end method
