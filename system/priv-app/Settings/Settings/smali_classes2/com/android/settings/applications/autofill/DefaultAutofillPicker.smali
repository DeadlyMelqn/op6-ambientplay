.class public Lcom/android/settings/applications/autofill/DefaultAutofillPicker;
.super Lcom/android/settings/applications/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;,
        Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final SETTING:Ljava/lang/String; = "autofill_service"

.field private static final TAG:Ljava/lang/String; = "DefaultAutofillPicker"


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/settings/applications/autofill/DefaultAutofillPicker;

    .prologue
    invoke-direct {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->update()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/autofill/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 53
    return-void
.end method

.method private addAddServicePreference()V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 184
    .local v0, "addNewServicePreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public static getDefaultKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "autofill_service"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "setting":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 210
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 214
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return-object v4
.end method

.method static synthetic lambda$-com_android_settings_applications_autofill_DefaultAutofillPicker_2800(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;
    .locals 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 163
    const-string/jumbo v4, "autofill_service_search_uri"

    .line 162
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "searchUri":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const/4 v3, 0x0

    return-object v3

    .line 168
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v0, "addNewServiceIntent":Landroid/content/Intent;
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 170
    .local v1, "preference":Landroid/support/v7/preference/Preference;
    const v3, 0x7f0f0c42

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 171
    const v3, 0x7f020201

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 172
    const v3, 0x7ffffffe

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 173
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 174
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 175
    return-object v1
.end method

.method private update()V
    .locals 0

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->updateCandidates()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->addAddServicePreference()V

    .line 148
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/DefaultAppInfo;>;"
    iget-object v5, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    invoke-interface {v5}, Lcom/android/settings/applications/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 193
    sget-object v6, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v7, 0x80

    .line 192
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 194
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 195
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 197
    .local v3, "permission":Ljava/lang/String;
    const-string/jumbo v5, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 198
    const-string/jumbo v5, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 197
    if-eqz v5, :cond_0

    .line 199
    :cond_1
    new-instance v5, Lcom/android/settings/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v7, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mUserId:I

    new-instance v8, Landroid/content/ComponentName;

    .line 200
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 199
    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/android/settings/applications/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "appInfo"    # Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p1, :cond_0

    .line 225
    return-object v2

    .line 227
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPickerFragment$CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 228
    .local v0, "appName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 229
    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v4, 0x7f0f1277

    .line 228
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x318

    return v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1
    .param p1, "selectedKey"    # Ljava/lang/String;
    .param p2, "confirmationMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    new-instance v0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    .line 92
    .local v0, "fragment":Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->init(Lcom/android/settings/applications/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/applications/DefaultAppPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    new-instance v1, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/autofill/-$Lambda$_I86o19szRNAJgk36YwTPbKRPYg;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->update()V

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 153
    invoke-super {p0}, Lcom/android/settings/applications/DefaultAppPickerFragment;->onDestroy()V

    .line 154
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "autofill_service"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "package_name"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 243
    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, -0x1

    .line 245
    .local v2, "result":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 246
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 244
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method
