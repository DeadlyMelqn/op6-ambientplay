.class public Lcom/ice/box/fragments/UI;
.super Landroid/preference/PreferenceFragment;
.source "UI.java"


# instance fields
.field immersiveListValue:Ljava/lang/String;

.field private isFreeVersion:Z

.field private mAnimatorDuration:Landroid/preference/ListPreference;

.field private mImmersiveList:Landroid/preference/ListPreference;

.field private mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

.field private mTransititionAnimation:Landroid/preference/ListPreference;

.field private mWindowAnimation:Landroid/preference/ListPreference;

.field private final navBarHeightApplyListener:Landroid/view/View$OnClickListener;

.field private navBarHeightDialog:Landroid/app/AlertDialog;

.field private final navBarHeightMinusListener:Landroid/view/View$OnClickListener;

.field private final navBarHeightPlusListener:Landroid/view/View$OnClickListener;

.field private navBarHeightProgress:I

.field private navBarHeightSeek:Landroid/widget/SeekBar;

.field private final navBarHeightSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final navBarHeightSeekMax:I

.field private navBarHeightValue:Landroid/widget/TextView;

.field private seekDialog:Lcom/ice/box/helpers/SeekDialog;

.field sharedPref:Landroid/content/SharedPreferences;

.field private tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct/range {p0 .. p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const/16 v0, 0xc8

    .line 55
    iput v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightSeekMax:I

    .line 74
    new-instance v0, Lcom/ice/box/fragments/UI$1;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/UI$1;-><init>(Lcom/ice/box/fragments/UI;)V

    iput-object v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightPlusListener:Landroid/view/View$OnClickListener;

    .line 88
    new-instance v0, Lcom/ice/box/fragments/UI$2;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/UI$2;-><init>(Lcom/ice/box/fragments/UI;)V

    iput-object v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightMinusListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/ice/box/fragments/UI$3;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/UI$3;-><init>(Lcom/ice/box/fragments/UI;)V

    iput-object v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightApplyListener:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Lcom/ice/box/fragments/UI$4;

    invoke-direct {v0, p0}, Lcom/ice/box/fragments/UI$4;-><init>(Lcom/ice/box/fragments/UI;)V

    iput-object v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ice/box/fragments/UI;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    return p0
.end method

.method static synthetic access$002(Lcom/ice/box/fragments/UI;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    return p1
.end method

.method static synthetic access$008(Lcom/ice/box/fragments/UI;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    return v0
.end method

.method static synthetic access$010(Lcom/ice/box/fragments/UI;)I
    .locals 2

    .line 52
    iget v0, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ice/box/fragments/UI;->navBarHeightProgress:I

    return v0
.end method

.method static synthetic access$100(Lcom/ice/box/fragments/UI;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$102(Lcom/ice/box/fragments/UI;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ice/box/fragments/UI;->navBarHeightValue:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/SeekDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/ice/box/fragments/UI;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/ice/box/fragments/UI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightPlusListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/ice/box/fragments/UI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightMinusListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/ice/box/fragments/UI;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightApplyListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ice/box/fragments/UI;)Landroid/widget/SeekBar;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightSeek:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ice/box/fragments/UI;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ice/box/fragments/UI;->navBarHeightSeek:Landroid/widget/SeekBar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/ice/box/fragments/UI;)Lcom/ice/box/helpers/TweaksHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ice/box/fragments/UI;)Landroid/app/AlertDialog;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->navBarHeightDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$402(Lcom/ice/box/fragments/UI;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/ice/box/fragments/UI;->navBarHeightDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ice/box/fragments/UI;)Landroid/preference/MultiSelectListPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ice/box/fragments/UI;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/ice/box/fragments/UI;->isFreeVersion:Z

    return p0
.end method

.method static synthetic access$800(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/ice/box/fragments/UI;)Landroid/preference/ListPreference;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    .line 143
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f130015

    .line 144
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->addPreferencesFromResource(I)V

    .line 147
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isFreeVersion"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/ice/box/fragments/UI;->isFreeVersion:Z

    .line 148
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isMonthly"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isYearly"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 150
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isException"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 151
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "localStableVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 152
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "localNightlyVersion"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 153
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isNightly"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 154
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "isICE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 155
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->sharedPref:Landroid/content/SharedPreferences;

    const-string v2, "licenseRating"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "policy_control"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    .line 159
    new-instance v1, Lcom/ice/box/helpers/TweaksHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ice/box/helpers/TweaksHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->tweaksHelper:Lcom/ice/box/helpers/TweaksHelper;

    .line 160
    new-instance v1, Lcom/ice/box/helpers/SeekDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ice/box/helpers/SeekDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->seekDialog:Lcom/ice/box/helpers/SeekDialog;

    const-string v1, "tweaks_immersive_list"

    .line 163
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    const-string v1, "immersive_perapp"

    .line 164
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    .line 165
    iget-boolean v1, v0, Lcom/ice/box/fragments/UI;->isFreeVersion:Z

    const v2, 0x17ca44ef

    const v5, -0x72d87165

    const/4 v7, 0x2

    if-eqz v1, :cond_4

    .line 166
    new-array v1, v7, [Ljava/lang/CharSequence;

    const v8, 0x7f100098

    invoke-virtual {v0, v8}, Lcom/ice/box/fragments/UI;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v4

    const v8, 0x7f100099

    invoke-virtual {v0, v8}, Lcom/ice/box/fragments/UI;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v3

    .line 168
    new-array v8, v7, [Ljava/lang/CharSequence;

    const-string v9, "immersive.full="

    aput-object v9, v8, v4

    const-string v9, "immersive.full=*"

    aput-object v9, v8, v3

    .line 169
    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 170
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_6

    .line 174
    :cond_0
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v5, :cond_2

    if-eq v8, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v8, "immersive.full=*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v8, "immersive.full="

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 191
    :try_start_0
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 184
    :pswitch_0
    :try_start_1
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    .line 186
    :catch_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 177
    :pswitch_1
    :try_start_2
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    .line 179
    :catch_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 191
    :goto_2
    :try_start_3
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 193
    :catch_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 199
    :cond_4
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 200
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_6

    .line 202
    :cond_5
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    if-eq v8, v5, :cond_7

    if-eq v8, v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v8, "immersive.full=*"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v3

    goto :goto_4

    :cond_7
    const-string v8, "immersive.full="

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v1, -0x1

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 220
    :try_start_4
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_5

    .line 213
    :pswitch_2
    :try_start_5
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 215
    :catch_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 205
    :pswitch_3
    :try_start_6
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    .line 208
    :catch_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 220
    :goto_5
    :try_start_7
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 222
    :catch_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct/range {v8 .. v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OutOfBoundsException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v8 .. v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_6
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersiveList:Landroid/preference/ListPreference;

    new-instance v8, Lcom/ice/box/fragments/UI$5;

    invoke-direct {v8, v0}, Lcom/ice/box/fragments/UI$5;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "immersive_perapp"

    .line 313
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    .line 314
    iget-boolean v1, v0, Lcom/ice/box/fragments/UI;->isFreeVersion:Z

    if-eqz v1, :cond_9

    .line 315
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 316
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 317
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100079

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 319
    :cond_9
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    const v8, 0x7f10009c

    if-eqz v1, :cond_a

    .line 320
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 321
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 322
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_9

    .line 324
    :cond_a
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->immersiveListValue:Ljava/lang/String;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eq v9, v5, :cond_c

    if-eq v9, v2, :cond_b

    goto :goto_7

    :cond_b
    const-string v2, "immersive.full=*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_8

    :cond_c
    const-string v2, "immersive.full="

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v1, -0x1

    :goto_8
    packed-switch v1, :pswitch_data_2

    .line 336
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 337
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    goto :goto_9

    .line 331
    :pswitch_4
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 332
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 333
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    goto :goto_9

    .line 326
    :pswitch_5
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setEnabled(Z)V

    .line 327
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/MultiSelectListPreference;->setSelectable(Z)V

    .line 328
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/MultiSelectListPreference;->setSummary(I)V

    .line 342
    :goto_9
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ice/box/fragments/UI$6;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$6;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 394
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Thread;->start()V

    .line 398
    :goto_a
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mImmersivePerAppList:Landroid/preference/MultiSelectListPreference;

    new-instance v2, Lcom/ice/box/fragments/UI$7;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$7;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_all_rotations"

    .line 424
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_all_rotations"

    .line 425
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_all_rotations"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_e

    move v5, v3

    goto :goto_b

    :cond_e
    move v5, v4

    .line 428
    :goto_b
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 429
    new-instance v2, Lcom/ice/box/fragments/UI$8;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$8;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_disable_volume_warning"

    .line 446
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_disable_volume_warning"

    .line 447
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_disable_volume_warning"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_f

    move v5, v3

    goto :goto_c

    :cond_f
    move v5, v4

    .line 450
    :goto_c
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 451
    new-instance v2, Lcom/ice/box/fragments/UI$9;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$9;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_hide_brightness_warning"

    .line 467
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_hide_brightness_warning"

    .line 468
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_hide_brightness_warning"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_10

    move v5, v3

    goto :goto_d

    :cond_10
    move v5, v4

    .line 471
    :goto_d
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 472
    new-instance v2, Lcom/ice/box/fragments/UI$10;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$10;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_clock_onclick"

    .line 490
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_clock_onclick"

    .line 491
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 492
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_clock_onclick"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_11

    move v5, v3

    goto :goto_e

    :cond_11
    move v5, v4

    .line 493
    :goto_e
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 494
    new-instance v2, Lcom/ice/box/fragments/UI$11;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$11;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_hide_battery"

    .line 511
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_hide_battery"

    .line 512
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_hide_battery"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_12

    move v5, v3

    goto :goto_f

    :cond_12
    move v5, v4

    .line 514
    :goto_f
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 515
    new-instance v2, Lcom/ice/box/fragments/UI$12;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$12;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_double_tap_sleep"

    .line 531
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_double_tap_sleep"

    .line 532
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_double_tap_sleep"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_13

    move v5, v3

    goto :goto_10

    :cond_13
    move v5, v4

    .line 534
    :goto_10
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 535
    new-instance v2, Lcom/ice/box/fragments/UI$13;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$13;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_hide_brightness_slider"

    .line 551
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_hide_brightness_slider"

    .line 552
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_hide_brightness_slider"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_14

    move v5, v3

    goto :goto_11

    :cond_14
    move v5, v4

    .line 555
    :goto_11
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 556
    new-instance v2, Lcom/ice/box/fragments/UI$14;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$14;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_qs_lock"

    .line 574
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_qs_lock"

    .line 575
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_qs_lock"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_15

    move v5, v3

    goto :goto_12

    :cond_15
    move v5, v4

    .line 577
    :goto_12
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 578
    new-instance v2, Lcom/ice/box/fragments/UI$15;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$15;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_qs_override_lockscreen"

    .line 595
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_qs_override_lockscreen"

    .line 596
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_qs_override_lockscreen"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_16

    move v5, v3

    goto :goto_13

    :cond_16
    move v5, v4

    .line 599
    :goto_13
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 600
    new-instance v2, Lcom/ice/box/fragments/UI$16;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$16;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_qs_pulldown"

    .line 619
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_qs_pulldown"

    .line 620
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_qs_pulldown"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_17

    move v5, v3

    goto :goto_14

    :cond_17
    move v5, v4

    .line 622
    :goto_14
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 623
    new-instance v2, Lcom/ice/box/fragments/UI$17;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$17;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_pulldown_blur"

    .line 640
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_pulldown_blur"

    .line 641
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_pulldown_blur"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_18

    move v5, v3

    goto :goto_15

    :cond_18
    move v5, v4

    .line 643
    :goto_15
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 644
    new-instance v2, Lcom/ice/box/fragments/UI$18;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$18;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_disable_persistent_notifications"

    .line 660
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_disable_persistent_notifications"

    .line 661
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_disable_persistent_notifications"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_19

    move v5, v3

    goto :goto_16

    :cond_19
    move v5, v4

    .line 664
    :goto_16
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 665
    new-instance v2, Lcom/ice/box/fragments/UI$19;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$19;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 683
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1a

    .line 684
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "tweaks_hide_keyboard_switcher"

    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_18

    :cond_1a
    const-string v1, "tweaks_hide_keyboard_switcher"

    .line 686
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_hide_keyboard_switcher"

    .line 687
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 688
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_hide_keyboard_switcher"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1b

    move v5, v3

    goto :goto_17

    :cond_1b
    move v5, v4

    .line 690
    :goto_17
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 691
    new-instance v2, Lcom/ice/box/fragments/UI$20;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$20;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_18
    const-string v1, "tweaks_disable_mtp_notif"

    .line 709
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_disable_mtp_notif"

    .line 710
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_disable_mtp_notif"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1c

    move v5, v3

    goto :goto_19

    :cond_1c
    move v5, v4

    .line 712
    :goto_19
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 713
    new-instance v2, Lcom/ice/box/fragments/UI$21;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$21;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "battery_bar"

    .line 730
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "battery_bar"

    .line 731
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "battery_bar"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1d

    move v5, v3

    goto :goto_1a

    :cond_1d
    move v5, v4

    .line 733
    :goto_1a
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 734
    new-instance v2, Lcom/ice/box/fragments/UI$22;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$22;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "battery_bar_animate"

    .line 752
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "battery_bar_animate"

    .line 753
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 754
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "battery_bar_animate"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1e

    move v5, v3

    goto :goto_1b

    :cond_1e
    move v5, v4

    .line 755
    :goto_1b
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 756
    new-instance v2, Lcom/ice/box/fragments/UI$23;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$23;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "battery_bar_style"

    .line 774
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "battery_bar_style"

    .line 775
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "battery_bar_style"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1f

    move v5, v3

    goto :goto_1c

    :cond_1f
    move v5, v4

    .line 777
    :goto_1c
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 778
    new-instance v2, Lcom/ice/box/fragments/UI$24;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$24;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_flashlight_low_battery"

    .line 794
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_flashlight_low_battery"

    .line 795
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_flashlight_low_battery"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_20

    move v5, v3

    goto :goto_1d

    :cond_20
    move v5, v4

    .line 797
    :goto_1d
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 798
    new-instance v2, Lcom/ice/box/fragments/UI$25;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$25;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 814
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_21

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "tweaks_show_multi_user"

    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1f

    :cond_21
    const-string v1, "tweaks_show_multi_user"

    .line 817
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_show_multi_user"

    .line 818
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "tweaks_show_multi_user"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_22

    move v5, v3

    goto :goto_1e

    :cond_22
    move v5, v4

    .line 820
    :goto_1e
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 821
    new-instance v2, Lcom/ice/box/fragments/UI$26;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$26;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_1f
    const-string v1, "window_animation_scale"

    .line 841
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    .line 843
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "window_animation_scale"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v5, 0x9

    const/16 v8, 0x8

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    if-nez v1, :cond_23

    .line 846
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_22

    .line 848
    :cond_23
    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_20

    :sswitch_0
    const-string v14, "1.75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v9

    goto/16 :goto_21

    :sswitch_1
    const-string v14, "1.25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v11

    goto/16 :goto_21

    :sswitch_2
    const-string v14, "1.5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v10

    goto :goto_21

    :sswitch_3
    const-string v14, ".75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v13

    goto :goto_21

    :sswitch_4
    const-string v14, ".25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v3

    goto :goto_21

    :sswitch_5
    const-string v14, "10"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v2

    goto :goto_21

    :sswitch_6
    const-string v14, ".5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v7

    goto :goto_21

    :sswitch_7
    const-string v14, "5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v5

    goto :goto_21

    :sswitch_8
    const-string v14, "2"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v8

    goto :goto_21

    :sswitch_9
    const-string v14, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v12

    goto :goto_21

    :sswitch_a
    const-string v14, "0"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v1, v4

    goto :goto_21

    :cond_24
    :goto_20
    const/4 v1, -0x1

    :goto_21
    packed-switch v1, :pswitch_data_3

    .line 883
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 880
    :pswitch_6
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 877
    :pswitch_7
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 874
    :pswitch_8
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 871
    :pswitch_9
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 868
    :pswitch_a
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 865
    :pswitch_b
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 862
    :pswitch_c
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 859
    :pswitch_d
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 856
    :pswitch_e
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 853
    :pswitch_f
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_22

    .line 850
    :pswitch_10
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 888
    :goto_22
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mWindowAnimation:Landroid/preference/ListPreference;

    new-instance v14, Lcom/ice/box/fragments/UI$27;

    invoke-direct {v14, v0}, Lcom/ice/box/fragments/UI$27;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "transition_animation_scale"

    .line 914
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    .line 916
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v14, "transition_animation_scale"

    invoke-static {v1, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 920
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_25

    .line 922
    :cond_25
    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    goto/16 :goto_23

    :sswitch_b
    const-string v14, "1.75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v9

    goto/16 :goto_24

    :sswitch_c
    const-string v14, "1.25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v11

    goto/16 :goto_24

    :sswitch_d
    const-string v14, "1.5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v10

    goto :goto_24

    :sswitch_e
    const-string v14, ".75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v13

    goto :goto_24

    :sswitch_f
    const-string v14, ".25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v3

    goto :goto_24

    :sswitch_10
    const-string v14, "10"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v2

    goto :goto_24

    :sswitch_11
    const-string v14, ".5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v7

    goto :goto_24

    :sswitch_12
    const-string v14, "5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v5

    goto :goto_24

    :sswitch_13
    const-string v14, "2"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v8

    goto :goto_24

    :sswitch_14
    const-string v14, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v12

    goto :goto_24

    :sswitch_15
    const-string v14, "0"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move v1, v4

    goto :goto_24

    :cond_26
    :goto_23
    const/4 v1, -0x1

    :goto_24
    packed-switch v1, :pswitch_data_4

    .line 957
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 954
    :pswitch_11
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 951
    :pswitch_12
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 948
    :pswitch_13
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 945
    :pswitch_14
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 942
    :pswitch_15
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 939
    :pswitch_16
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 936
    :pswitch_17
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 933
    :pswitch_18
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 930
    :pswitch_19
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 927
    :pswitch_1a
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_25

    .line 924
    :pswitch_1b
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 962
    :goto_25
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mTransititionAnimation:Landroid/preference/ListPreference;

    new-instance v14, Lcom/ice/box/fragments/UI$28;

    invoke-direct {v14, v0}, Lcom/ice/box/fragments/UI$28;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "animator_duration_scale"

    .line 987
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    .line 989
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v14, "animator_duration_scale"

    invoke-static {v1, v14}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-static/range {v1 .. v1}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_27

    .line 992
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_28

    .line 994
    :cond_27
    invoke-virtual/range {v1 .. v1}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2

    goto/16 :goto_26

    :sswitch_16
    const-string v14, "1.75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v9

    goto/16 :goto_27

    :sswitch_17
    const-string v14, "1.25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v11

    goto/16 :goto_27

    :sswitch_18
    const-string v14, "1.5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v10

    goto :goto_27

    :sswitch_19
    const-string v14, ".75"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v13

    goto :goto_27

    :sswitch_1a
    const-string v14, ".25"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v3

    goto :goto_27

    :sswitch_1b
    const-string v14, "10"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v2

    goto :goto_27

    :sswitch_1c
    const-string v14, ".5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v7

    goto :goto_27

    :sswitch_1d
    const-string v14, "5"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v5

    goto :goto_27

    :sswitch_1e
    const-string v14, "2"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v8

    goto :goto_27

    :sswitch_1f
    const-string v14, "1"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v12

    goto :goto_27

    :sswitch_20
    const-string v14, "0"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    move v1, v4

    goto :goto_27

    :cond_28
    :goto_26
    const/4 v1, -0x1

    :goto_27
    packed-switch v1, :pswitch_data_5

    .line 1029
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1026
    :pswitch_1c
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1023
    :pswitch_1d
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1020
    :pswitch_1e
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1017
    :pswitch_1f
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1014
    :pswitch_20
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1011
    :pswitch_21
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1008
    :pswitch_22
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1005
    :pswitch_23
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 1002
    :pswitch_24
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 999
    :pswitch_25
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_28

    .line 996
    :pswitch_26
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1034
    :goto_28
    iget-object v1, v0, Lcom/ice/box/fragments/UI;->mAnimatorDuration:Landroid/preference/ListPreference;

    new-instance v14, Lcom/ice/box/fragments/UI$29;

    invoke-direct {v14, v0}, Lcom/ice/box/fragments/UI$29;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_clock_position"

    .line 1059
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1060
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {v14 .. v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "tweaks_clock_position"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1062
    invoke-static/range {v14 .. v14}, Lcom/ice/box/helpers/TweaksHelper;->isEmptyString(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_29

    .line 1063
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2b

    .line 1065
    :cond_29
    invoke-virtual/range {v14 .. v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_6

    goto :goto_29

    :pswitch_27
    const-string v15, "3"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    move v14, v13

    goto :goto_2a

    :pswitch_28
    const-string v15, "2"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    move v14, v7

    goto :goto_2a

    :pswitch_29
    const-string v15, "1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    move v14, v3

    goto :goto_2a

    :pswitch_2a
    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    move v14, v4

    goto :goto_2a

    :cond_2a
    :goto_29
    const/4 v14, -0x1

    :goto_2a
    packed-switch v14, :pswitch_data_7

    goto :goto_2b

    .line 1076
    :pswitch_2b
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2b

    .line 1073
    :pswitch_2c
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2b

    .line 1070
    :pswitch_2d
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2b

    .line 1067
    :pswitch_2e
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1080
    :goto_2b
    new-instance v14, Lcom/ice/box/fragments/UI$30;

    invoke-direct {v14, v0}, Lcom/ice/box/fragments/UI$30;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_quick_qs_buttons_landscape"

    .line 1105
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {v14 .. v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "tweaks_quick_qs_buttons_landscape"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2b

    .line 1109
    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_2e

    .line 1111
    :cond_2b
    invoke-virtual/range {v14 .. v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    packed-switch v15, :pswitch_data_8

    packed-switch v15, :pswitch_data_9

    goto/16 :goto_2c

    :pswitch_2f
    const-string v15, "14"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v2

    goto/16 :goto_2d

    :pswitch_30
    const-string v15, "13"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v5

    goto/16 :goto_2d

    :pswitch_31
    const-string v15, "12"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v8

    goto :goto_2d

    :pswitch_32
    const-string v15, "11"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v9

    goto :goto_2d

    :pswitch_33
    const-string v15, "10"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v10

    goto :goto_2d

    :pswitch_34
    const-string v15, "9"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v11

    goto :goto_2d

    :pswitch_35
    const-string v15, "8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v12

    goto :goto_2d

    :pswitch_36
    const-string v15, "7"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v13

    goto :goto_2d

    :pswitch_37
    const-string v15, "6"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v7

    goto :goto_2d

    :pswitch_38
    const-string v15, "5"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v3

    goto :goto_2d

    :pswitch_39
    const-string v15, "4"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2c

    move v14, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v14, -0x1

    :goto_2d
    packed-switch v14, :pswitch_data_a

    goto :goto_2e

    .line 1143
    :pswitch_3a
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1140
    :pswitch_3b
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1137
    :pswitch_3c
    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1134
    :pswitch_3d
    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1131
    :pswitch_3e
    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1128
    :pswitch_3f
    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1125
    :pswitch_40
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1122
    :pswitch_41
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1119
    :pswitch_42
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1116
    :pswitch_43
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_2e

    .line 1113
    :pswitch_44
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1147
    :goto_2e
    new-instance v14, Lcom/ice/box/fragments/UI$31;

    invoke-direct {v14, v0}, Lcom/ice/box/fragments/UI$31;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_quick_qs_buttons"

    .line 1173
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1174
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {v14 .. v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "tweaks_quick_qs_buttons"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2d

    .line 1177
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_31

    .line 1179
    :cond_2d
    invoke-virtual/range {v14 .. v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v6, 0x30

    if-eq v15, v6, :cond_2e

    packed-switch v15, :pswitch_data_b

    goto :goto_2f

    :pswitch_45
    const-string v6, "8"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v11

    goto :goto_30

    :pswitch_46
    const-string v6, "7"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v12

    goto :goto_30

    :pswitch_47
    const-string v6, "6"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v13

    goto :goto_30

    :pswitch_48
    const-string v6, "5"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v7

    goto :goto_30

    :pswitch_49
    const-string v6, "4"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v3

    goto :goto_30

    :cond_2e
    const-string v6, "0"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    move v6, v4

    goto :goto_30

    :cond_2f
    :goto_2f
    const/4 v6, -0x1

    :goto_30
    packed-switch v6, :pswitch_data_c

    goto :goto_31

    .line 1196
    :pswitch_4a
    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_31

    .line 1193
    :pswitch_4b
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_31

    .line 1190
    :pswitch_4c
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_31

    .line 1187
    :pswitch_4d
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_31

    .line 1184
    :pswitch_4e
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_31

    .line 1181
    :pswitch_4f
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1200
    :goto_31
    new-instance v6, Lcom/ice/box/fragments/UI$32;

    invoke-direct {v6, v0}, Lcom/ice/box/fragments/UI$32;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_qs_rows_landscape"

    .line 1225
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1226
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v14, "tweaks_qs_rows_landscape"

    invoke-static {v6, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_30

    .line 1228
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_34

    .line 1230
    :cond_30
    invoke-virtual/range {v6 .. v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    packed-switch v14, :pswitch_data_d

    goto :goto_32

    :pswitch_50
    const-string v14, "4"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v13

    goto :goto_33

    :pswitch_51
    const-string v14, "3"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v7

    goto :goto_33

    :pswitch_52
    const-string v14, "2"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v3

    goto :goto_33

    :pswitch_53
    const-string v14, "1"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v6, v4

    goto :goto_33

    :cond_31
    :goto_32
    const/4 v6, -0x1

    :goto_33
    packed-switch v6, :pswitch_data_e

    goto :goto_34

    .line 1241
    :pswitch_54
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_34

    .line 1238
    :pswitch_55
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_34

    .line 1235
    :pswitch_56
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_34

    .line 1232
    :pswitch_57
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1245
    :goto_34
    new-instance v6, Lcom/ice/box/fragments/UI$33;

    invoke-direct {v6, v0}, Lcom/ice/box/fragments/UI$33;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_qs_rows"

    .line 1270
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1271
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v14, "tweaks_qs_rows"

    invoke-static {v6, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_32

    .line 1273
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_37

    .line 1275
    :cond_32
    invoke-virtual/range {v6 .. v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    packed-switch v14, :pswitch_data_f

    goto :goto_35

    :pswitch_58
    const-string v14, "6"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v12

    goto :goto_36

    :pswitch_59
    const-string v14, "5"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v13

    goto :goto_36

    :pswitch_5a
    const-string v14, "4"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v7

    goto :goto_36

    :pswitch_5b
    const-string v14, "3"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v3

    goto :goto_36

    :pswitch_5c
    const-string v14, "2"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    move v6, v4

    goto :goto_36

    :cond_33
    :goto_35
    const/4 v6, -0x1

    :goto_36
    packed-switch v6, :pswitch_data_10

    goto :goto_37

    .line 1289
    :pswitch_5d
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_37

    .line 1286
    :pswitch_5e
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_37

    .line 1283
    :pswitch_5f
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_37

    .line 1280
    :pswitch_60
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_37

    .line 1277
    :pswitch_61
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1293
    :goto_37
    new-instance v6, Lcom/ice/box/fragments/UI$34;

    invoke-direct {v6, v0}, Lcom/ice/box/fragments/UI$34;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v6}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_qs_columns_landscape"

    .line 1316
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual/range {v6 .. v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v14, "tweaks_qs_columns_landscape"

    invoke-static {v6, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_34

    .line 1319
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_3a

    .line 1321
    :cond_34
    invoke-virtual/range {v6 .. v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    packed-switch v14, :pswitch_data_11

    packed-switch v14, :pswitch_data_12

    goto/16 :goto_38

    :pswitch_62
    const-string v14, "14"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v2

    goto/16 :goto_39

    :pswitch_63
    const-string v14, "13"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v5

    goto/16 :goto_39

    :pswitch_64
    const-string v14, "12"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v8

    goto :goto_39

    :pswitch_65
    const-string v14, "11"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v9

    goto :goto_39

    :pswitch_66
    const-string v14, "10"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v10

    goto :goto_39

    :pswitch_67
    const-string v14, "9"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v11

    goto :goto_39

    :pswitch_68
    const-string v14, "8"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v12

    goto :goto_39

    :pswitch_69
    const-string v14, "7"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v13

    goto :goto_39

    :pswitch_6a
    const-string v14, "6"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v7

    goto :goto_39

    :pswitch_6b
    const-string v14, "5"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v3

    goto :goto_39

    :pswitch_6c
    const-string v14, "4"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    move v6, v4

    goto :goto_39

    :cond_35
    :goto_38
    const/4 v6, -0x1

    :goto_39
    packed-switch v6, :pswitch_data_13

    goto :goto_3a

    .line 1353
    :pswitch_6d
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1350
    :pswitch_6e
    invoke-virtual {v1, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1347
    :pswitch_6f
    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1344
    :pswitch_70
    invoke-virtual {v1, v9}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1341
    :pswitch_71
    invoke-virtual {v1, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1338
    :pswitch_72
    invoke-virtual {v1, v11}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1335
    :pswitch_73
    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1332
    :pswitch_74
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1329
    :pswitch_75
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1326
    :pswitch_76
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3a

    .line 1323
    :pswitch_77
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1357
    :goto_3a
    new-instance v2, Lcom/ice/box/fragments/UI$35;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$35;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_qs_columns"

    .line 1381
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1382
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "tweaks_qs_columns"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_36

    .line 1384
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3d

    .line 1386
    :cond_36
    invoke-virtual/range {v2 .. v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_14

    goto :goto_3b

    :pswitch_78
    const-string v5, "5"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v13

    goto :goto_3c

    :pswitch_79
    const-string v5, "4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v7

    goto :goto_3c

    :pswitch_7a
    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v3

    goto :goto_3c

    :pswitch_7b
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    move v2, v4

    goto :goto_3c

    :cond_37
    :goto_3b
    const/4 v2, -0x1

    :goto_3c
    packed-switch v2, :pswitch_data_15

    goto :goto_3d

    .line 1397
    :pswitch_7c
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3d

    .line 1394
    :pswitch_7d
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3d

    .line 1391
    :pswitch_7e
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_3d

    .line 1388
    :pswitch_7f
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1401
    :goto_3d
    new-instance v2, Lcom/ice/box/fragments/UI$36;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$36;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "battery_bar_thickness"

    .line 1425
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "battery_bar_thickness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_38

    .line 1429
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_40

    .line 1431
    :cond_38
    invoke-virtual/range {v2 .. v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_16

    goto :goto_3e

    :pswitch_80
    const-string v5, "4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move/from16 v16, v13

    goto :goto_3f

    :pswitch_81
    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move/from16 v16, v7

    goto :goto_3f

    :pswitch_82
    const-string v5, "2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move/from16 v16, v3

    goto :goto_3f

    :pswitch_83
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    move/from16 v16, v4

    goto :goto_3f

    :cond_39
    :goto_3e
    const/16 v16, -0x1

    :goto_3f
    packed-switch v16, :pswitch_data_17

    goto :goto_40

    .line 1442
    :pswitch_84
    invoke-virtual {v1, v13}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_40

    .line 1439
    :pswitch_85
    invoke-virtual {v1, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_40

    .line 1436
    :pswitch_86
    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_40

    .line 1433
    :pswitch_87
    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1446
    :goto_40
    new-instance v2, Lcom/ice/box/fragments/UI$37;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$37;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "tweaks_navbar_height"

    .line 1470
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 1471
    new-instance v2, Lcom/ice/box/fragments/UI$38;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$38;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_custom_navbar_height"

    .line 1511
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_custom_navbar_height"

    .line 1512
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_custom_navbar_height"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3a

    move v5, v3

    goto :goto_41

    :cond_3a
    move v5, v4

    .line 1514
    :goto_41
    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1515
    new-instance v2, Lcom/ice/box/fragments/UI$39;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$39;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v1, "tweaks_hide_notification_carrier"

    .line 1532
    invoke-virtual {v0, v1}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "tweaks_hide_notification_carrier"

    .line 1533
    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 1534
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual/range {v5 .. v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tweaks_hide_notification_carrier"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3b

    goto :goto_42

    :cond_3b
    move v3, v4

    .line 1535
    :goto_42
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1536
    new-instance v2, Lcom/ice/box/fragments/UI$40;

    invoke-direct {v2, v0}, Lcom/ice/box/fragments/UI$40;-><init>(Lcom/ice/box/fragments/UI;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 1554
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/fragments/UI;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "tweaks_show_navbar"

    invoke-virtual {v0, v2}, Lcom/ice/box/fragments/UI;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_a
        0x31 -> :sswitch_9
        0x32 -> :sswitch_8
        0x35 -> :sswitch_7
        0x5c7 -> :sswitch_6
        0x61f -> :sswitch_5
        0xb2f1 -> :sswitch_4
        0xb38c -> :sswitch_3
        0xbdb8 -> :sswitch_2
        0x16f920 -> :sswitch_1
        0x16f9bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_15
        0x31 -> :sswitch_14
        0x32 -> :sswitch_13
        0x35 -> :sswitch_12
        0x5c7 -> :sswitch_11
        0x61f -> :sswitch_10
        0xb2f1 -> :sswitch_f
        0xb38c -> :sswitch_e
        0xbdb8 -> :sswitch_d
        0x16f920 -> :sswitch_c
        0x16f9bb -> :sswitch_b
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_20
        0x31 -> :sswitch_1f
        0x32 -> :sswitch_1e
        0x35 -> :sswitch_1d
        0x5c7 -> :sswitch_1c
        0x61f -> :sswitch_1b
        0xb2f1 -> :sswitch_1a
        0xb38c -> :sswitch_19
        0xbdb8 -> :sswitch_18
        0x16f920 -> :sswitch_17
        0x16f9bb -> :sswitch_16
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x30
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x34
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x61f
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x34
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x31
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x32
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
    .end packed-switch

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x34
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x61f
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
    .end packed-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
    .end packed-switch

    :pswitch_data_14
    .packed-switch 0x32
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
    .end packed-switch

    :pswitch_data_15
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
    .end packed-switch

    :pswitch_data_16
    .packed-switch 0x31
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
    .end packed-switch

    :pswitch_data_17
    .packed-switch 0x0
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
    .end packed-switch
.end method
