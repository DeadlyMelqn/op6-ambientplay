.class public Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;
.super Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;
.source "AodDisplayPeriodPreferenceFragment.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final KEY_DISPLY_TIME_END:Ljava/lang/String; = "display_time_end"

.field public static final KEY_DISPLY_TIME_START:Ljava/lang/String; = "display_time_start"

.field private static final KEY_MAIN_SCREEN:Ljava/lang/String; = "main_screen"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mEndPreference:Lcom/oneplus/lib/preference/Preference;

.field private mEndTime:Lcom/oneplus/settings/TextTime;

.field private mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

.field private mStartPreference:Lcom/oneplus/lib/preference/Preference;

.field private mStartTime:Lcom/oneplus/settings/TextTime;

.field mUserId:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;

    .prologue
    iget-object v0, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "AodDisplayPeriodPreferenceFragment"

    sput-object v0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;-><init>()V

    return-void
.end method

.method private setSummary()V
    .locals 5

    .prologue
    .line 84
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_time_start"

    iget v4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "start":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v3}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    sget-object v2, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSummary: start from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v4}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "display_time_end"

    iget v4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "end":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/TextTime;->setTime(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    iget-object v3, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v3}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 92
    sget-object v2, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSummary: end to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    invoke-virtual {v4}, Lcom/oneplus/settings/TextTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    .line 56
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mUserId:I

    .line 57
    const-string/jumbo v1, "main_screen"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mRootPreference:Lcom/oneplus/lib/preference/PreferenceScreen;

    .line 58
    const-string/jumbo v1, "display_time_start"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    .line 59
    const-string/jumbo v1, "display_time_end"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    .line 60
    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display_from"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    .line 61
    new-instance v1, Lcom/oneplus/settings/TextTime;

    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "display_to"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/settings/TextTime;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    .line 62
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 64
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 66
    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndPreference:Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->setSummary()V

    .line 81
    return-void
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "key":Ljava/lang/String;
    const-string/jumbo v0, "display_time_start"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mStartTime:Lcom/oneplus/settings/TextTime;

    .line 111
    .local v8, "textTime":Lcom/oneplus/settings/TextTime;
    :goto_0
    invoke-virtual {v8}, Lcom/oneplus/settings/TextTime;->getHour()I

    move-result v4

    .line 112
    .local v4, "hour":I
    invoke-virtual {v8}, Lcom/oneplus/settings/TextTime;->getMin()I

    move-result v5

    .line 113
    .local v5, "min":I
    sget-object v0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPreferenceClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;

    invoke-direct {v3, p0, v8, p1, v7}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment$1;-><init>(Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;Lcom/oneplus/settings/TextTime;Lcom/oneplus/lib/preference/Preference;Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 114
    const v2, 0x7f0801e6

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 123
    const/4 v0, 0x0

    return v0

    .line 110
    .end local v4    # "hour":I
    .end local v5    # "min":I
    .end local v8    # "textTime":Lcom/oneplus/settings/TextTime;
    :cond_0
    iget-object v8, p0, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->mEndTime:Lcom/oneplus/settings/TextTime;

    .restart local v8    # "textTime":Lcom/oneplus/settings/TextTime;
    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/widget/preference/OPPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/settings/AodDisplayPeriodPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 99
    .local v0, "list":Landroid/widget/ListView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-void
.end method
