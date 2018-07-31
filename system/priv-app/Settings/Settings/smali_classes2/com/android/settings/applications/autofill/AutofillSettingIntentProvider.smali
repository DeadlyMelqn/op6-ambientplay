.class public final Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;
.super Ljava/lang/Object;
.source "AutofillSettingIntentProvider.java"


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;

.field static final SETTING:Ljava/lang/String; = "autofill_service"

.field private static final TAG:Ljava/lang/String; = "DefaultAutofillPicker"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSelectedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->AUTOFILL_PROBE:Landroid/content/Intent;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->mSelectedKey:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 40
    iget-object v7, p0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 41
    sget-object v8, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v9, 0x80

    .line 40
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 43
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 44
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 45
    .local v5, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    .line 46
    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 45
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "flattenKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->mSelectedKey:Ljava/lang/String;

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    :try_start_0
    new-instance v7, Landroid/service/autofill/AutofillServiceInfo;

    iget-object v8, p0, Lcom/android/settings/applications/autofill/AutofillSettingIntentProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v7, v8, v5}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v7}, Landroid/service/autofill/AutofillServiceInfo;->getSettingsActivity()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 57
    .local v6, "settingsActivity":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 58
    return-object v10

    .line 52
    .end local v6    # "settingsActivity":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/SecurityException;
    const-string/jumbo v7, "DefaultAutofillPicker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error getting info for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v10

    .line 60
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v6    # "settingsActivity":Ljava/lang/String;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v9, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v7

    return-object v7

    .line 65
    .end local v1    # "flattenKey":Ljava/lang/String;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "settingsActivity":Ljava/lang/String;
    :cond_2
    return-object v10
.end method
