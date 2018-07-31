.class public Lcom/oneplus/settings/OPPhoneControlWaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPPhoneControlWaySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPPhoneControlWaySettings$ButtonsSearchIndexProvider;,
        Lcom/oneplus/settings/OPPhoneControlWaySettings$KeyLockMode;
    }
.end annotation


# static fields
.field private static final KEY_ALWAYS_SHOW_NAVIGATION_BAR:Ljava/lang/String; = "always_show_navigation_bar"

.field private static final KEY_BUTTONS_ENABLE_ON_SCREEN_NAVKEYS:Ljava/lang/String; = "buttons_enable_on_screen_navkeys"

.field private static final KEY_BUTTONS_SWAP_NAVKEYS:Ljava/lang/String; = "buttons_swap_navkeys"

.field private static final KEY_GESTURE_NAVIGATION_BAR:Ljava/lang/String; = "gesture_navigation_bar"

.field private static final KEY_HIDE_NAVIGATION_BAR:Ljava/lang/String; = "hide_navigation_bar"

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final KEY_PHONE_CONTROL_WAY:Ljava/lang/String; = "phone_control_way"

.field private static final REQUEST_CODE_FOR_GESTURE_GUIDE:I = 0x64

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPPhoneControlWaySettings"

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3

.field private static final TYPE_HIDE_NAVIGATION_BAR:I = 0x2


# instance fields
.field private mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mContext:Landroid/content/Context;

.field private mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

.field private mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

.field private mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/settings/OPPhoneControlWaySettings;)Lcom/android/settings/ui/RadioButtonPreference;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic -wrap0()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V
    .locals 0
    .param p0, "-this"    # Lcom/oneplus/settings/OPPhoneControlWaySettings;

    .prologue
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/oneplus/settings/OPPhoneControlWaySettings$ButtonsSearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings$ButtonsSearchIndexProvider;-><init>()V

    .line 244
    sput-object v0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method private delayHideNavkey()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings$1;-><init>(Lcom/oneplus/settings/OPPhoneControlWaySettings;)V

    .line 226
    const-wide/16 v2, 0x3e8

    .line 218
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void
.end method

.method private getNavigationType()I
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "buttons_enable_on_screen_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const-string/jumbo v1, "buttons_swap_navkeys"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-object v0
.end method

.method private hideNavbar()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method private initPref()V
    .locals 1

    .prologue
    .line 123
    const-string/jumbo v0, "always_show_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    .line 124
    const-string/jumbo v0, "hide_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    .line 125
    const-string/jumbo v0, "gesture_navigation_bar"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 129
    const-string/jumbo v0, "phone_control_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    .line 130
    return-void
.end method

.method private setNavigationType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_navigation_bar_type"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    .line 232
    const-string/jumbo v0, "op_fullscreen_gesture_enabled"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 233
    return-void
.end method

.method private showNavbar()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method private updateUI()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "op_navigation_bar_type"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    .local v0, "value":I
    iget-object v4, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 163
    iget-object v4, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 164
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 165
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    .line 168
    return-void

    :cond_1
    move v1, v3

    .line 162
    goto :goto_0

    :cond_2
    move v1, v3

    .line 163
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 110
    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v0, 0x7f080064

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->addPreferencesFromResource(I)V

    .line 117
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mWindow:Landroid/view/Window;

    .line 119
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->initPref()V

    .line 120
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->releaseAnim()V

    .line 158
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    .line 149
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings/ui/RadioButtonPreference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 173
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 175
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    .line 176
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    .line 177
    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 181
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 182
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->showNavbar()V

    .line 183
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    .line 184
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mAlwaysShowNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mLeftButtonNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mGestureNavigationBar:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 189
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 191
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->delayHideNavkey()V

    .line 192
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->setNavigationType(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/oneplus/settings/OPPhoneControlWaySettings;->updateUI()V

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/oneplus/settings/OPPhoneControlWaySettings;->mOPPhoneControlWayCategory:Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    .line 140
    :cond_0
    return-void
.end method
