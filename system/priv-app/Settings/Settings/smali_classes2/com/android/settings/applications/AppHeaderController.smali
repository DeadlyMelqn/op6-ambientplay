.class public Lcom/android/settings/applications/AppHeaderController;
.super Ljava/lang/Object;
.source "AppHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppHeaderController$ActionType;
    }
.end annotation


# static fields
.field public static final PREF_KEY_APP_HEADER:Ljava/lang/String; = "pref_app_header"

.field private static final TAG:Ljava/lang/String; = "AppDetailFeature"


# instance fields
.field private final mAppHeader:Landroid/view/View;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLeftAction:I

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRightAction:I

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "appHeader"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    .line 88
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    .line 90
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppHeaderController;->mMetricsCategory:I

    .line 92
    if-eqz p3, :cond_0

    .line 93
    iput-object p3, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    const v1, 0x7f040026

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    goto :goto_0
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .locals 5
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "action"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 235
    if-nez p1, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 280
    return-void

    .line 240
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "os"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 241
    iget v1, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_2

    .line 243
    :cond_1
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-static {v1}, Lcom/android/settings/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 240
    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0afa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    const v1, 0x7f0201f4

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 248
    new-instance v1, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;

    invoke-direct {v1, v3, p0}, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez v1, :cond_3

    .line 257
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 262
    :goto_1
    return-void

    .line 259
    :cond_3
    new-instance v1, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/-$Lambda$t0r0Yza4fBUmQz35I0aG1dSmA4s;-><init>(BLjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 266
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 265
    invoke-direct {p0, v1}, Lcom/android/settings/applications/AppHeaderController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_4

    .line 268
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 269
    return-void

    .line 271
    :cond_4
    new-instance v1, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/-$Lambda$5ku_yVEfF-7sOKy4SSB3Jd8sM_w;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    return-void

    .line 276
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 277
    return-void

    .line 238
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 283
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 284
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 285
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 285
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 288
    :cond_0
    return-object v3
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 293
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :cond_0
    return-void

    .line 295
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;
    .locals 4

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 202
    .local v0, "leftButton":Landroid/widget/ImageButton;
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v3, 0x7f0a00af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 204
    .local v1, "rightButton":Landroid/widget/ImageButton;
    iget v2, p0, Lcom/android/settings/applications/AppHeaderController;->mLeftAction:I

    invoke-direct {p0, v0, v2}, Lcom/android/settings/applications/AppHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 205
    iget v2, p0, Lcom/android/settings/applications/AppHeaderController;->mRightAction:I

    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/AppHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 206
    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rebindActions"    # Z

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;

    .line 179
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    const v2, 0x7f0a00b3

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    const v2, 0x7f0a00b5

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 185
    iget-boolean v1, p0, Lcom/android/settings/applications/AppHeaderController;->mIsInstantApp:Z

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f1260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    const v2, 0x7f0a00b4

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/AppHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 190
    :cond_1
    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/applications/AppHeaderController;->bindAppHeaderButtons()Lcom/android/settings/applications/AppHeaderController;

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppHeader:Landroid/view/View;

    return-object v1
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiContext"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 169
    .local v0, "pref":Lcom/android/settings/applications/LayoutPreference;
    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 170
    const-string/jumbo v1, "pref_app_header"

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 171
    return-object v0
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_8161(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 249
    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    .line 250
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    iget v6, p0, Lcom/android/settings/applications/AppHeaderController;->mMetricsCategory:I

    .line 249
    const v1, 0x7f0f0afa

    .line 250
    const/4 v5, 0x0

    .line 248
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_8726(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_AppHeaderController_9276(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public setAppNotifPrefIntent(Landroid/content/Intent;)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "appNotifPrefIntent"    # Landroid/content/Intent;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    .line 155
    return-object p0
.end method

.method public setButtonActions(II)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "leftAction"    # I
    .param p2, "rightAction"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/android/settings/applications/AppHeaderController;->mLeftAction:I

    .line 139
    iput p2, p0, Lcom/android/settings/applications/AppHeaderController;->mRightAction:I

    .line 140
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/applications/AppHeaderController;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    :cond_0
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;
    .locals 2
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 108
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    :cond_0
    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "isInstantApp"    # Z

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/android/settings/applications/AppHeaderController;->mIsInstantApp:Z

    .line 160
    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppHeaderController;
    .locals 1
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 120
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 121
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 116
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mPackageName:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/AppHeaderController;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 133
    :cond_0
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 126
    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/applications/AppHeaderController;
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/android/settings/applications/AppHeaderController;->mUid:I

    .line 150
    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/applications/AppHeaderController;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No activity, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object p0

    .line 214
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 215
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 216
    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No actionbar, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object p0

    .line 220
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x1010530

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 223
    return-object p0
.end method
