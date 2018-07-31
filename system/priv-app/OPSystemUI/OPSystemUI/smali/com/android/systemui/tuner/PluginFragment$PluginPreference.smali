.class Lcom/android/systemui/tuner/PluginFragment$PluginPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "PluginFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/PluginFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginPreference"
.end annotation


# instance fields
.field private final mHasSettings:Z

.field private final mInfo:Landroid/content/pm/PackageInfo;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 4
    .param p1, "prefContext"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    .line 150
    iput-object p2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    .line 151
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->isPluginEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setChecked(Z)V

    .line 153
    const v0, 0x7f0d014c

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->setWidgetLayoutResource(I)V

    .line 154
    return-void
.end method

.method private isPluginEnabled()Z
    .locals 4

    .prologue
    .line 157
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 158
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v3, v3, v1

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 158
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 161
    const/4 v3, 0x2

    .line 160
    if-ne v2, v3, :cond_0

    .line 162
    const/4 v2, 0x0

    return v2

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_tuner_PluginFragment$PluginPreference_7674(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 194
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.systemui.action.PLUGIN_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 195
    const/4 v3, 0x0

    .line 193
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 196
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 198
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 199
    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 198
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_PluginFragment$PluginPreference_8240(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    const/4 v1, 0x1

    return v1
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const v4, 0x7f0a02ce

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 188
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    const v0, 0x7f0a00cb

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mHasSettings:Z

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/tuner/-$Lambda$ly57dRawtR5LaF2KOH8zt99ex04;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/tuner/-$Lambda$ly57dRawtR5LaF2KOH8zt99ex04;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/-$Lambda$UDFMOt0ssYl7h45SkHFyoARHrq8;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    return-void

    :cond_1
    move v0, v2

    .line 189
    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 9
    .param p1, "value"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 170
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 172
    .local v1, "desiredState":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 173
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 174
    iget-object v7, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    aget-object v7, v7, v2

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 173
    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0, v1, v8}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v1    # "desiredState":I
    .end local v2    # "i":I
    :cond_0
    const/4 v1, 0x2

    .restart local v1    # "desiredState":I
    goto :goto_0

    .line 178
    .restart local v2    # "i":I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->mInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 179
    .local v4, "pkg":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.android.systemui.action.PLUGIN_CHANGED"

    .line 180
    if-eqz v4, :cond_2

    const-string/jumbo v7, "package"

    invoke-static {v7, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 179
    :cond_2
    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    return v8
.end method
