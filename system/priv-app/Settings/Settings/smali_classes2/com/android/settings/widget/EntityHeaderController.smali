.class public Lcom/android/settings/widget/EntityHeaderController;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/EntityHeaderController$ActionType;
    }
.end annotation


# static fields
.field public static final PREF_KEY_APP_HEADER:Ljava/lang/String; = "pref_app_header"

.field private static final TAG:Ljava/lang/String; = "AppDetailFeature"


# instance fields
.field private mAction1:I

.field private mAction2:I

.field private final mActivity:Landroid/app/Activity;

.field private final mAppContext:Landroid/content/Context;

.field private mAppNotifPrefIntent:Landroid/content/Intent;

.field private final mFragment:Landroid/app/Fragment;

.field private mHasAppInfoLink:Z

.field private final mHeader:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconContentDescription:Ljava/lang/String;

.field private mIsInstantApp:Z

.field private mLabel:Ljava/lang/CharSequence;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mMetricsCategory:I

.field private mPackageName:Ljava/lang/String;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSummary:Ljava/lang/CharSequence;

.field private mUid:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/widget/EntityHeaderController;)Landroid/content/Intent;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/widget/EntityHeaderController;)Landroid/app/Fragment;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/widget/EntityHeaderController;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/widget/EntityHeaderController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/settings/widget/EntityHeaderController;

    .prologue
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    return v0
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;
    .param p3, "header"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    .line 110
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mFragment:Landroid/app/Fragment;

    .line 113
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mMetricsCategory:I

    .line 115
    if-eqz p3, :cond_0

    .line 116
    iput-object p3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    .line 121
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 119
    const v1, 0x7f0401ad

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    goto :goto_0
.end method

.method private bindAppInfoLink(Landroid/view/View;)V
    .locals 2
    .param p1, "entityHeaderContent"    # Landroid/view/View;

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    if-eqz p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 269
    :cond_1
    const-string/jumbo v0, "AppDetailFeature"

    const-string/jumbo v1, "Missing ingredients to build app info link, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "os"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    if-nez v0, :cond_1

    .line 268
    iget v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_1

    .line 272
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/EntityHeaderController$1;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void
.end method

.method private bindButton(Landroid/widget/ImageButton;I)V
    .locals 6
    .param p1, "button"    # Landroid/widget/ImageButton;
    .param p2, "action"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 314
    if-nez p1, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 361
    return-void

    .line 319
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 320
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 333
    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance v1, Lcom/android/settings/widget/EntityHeaderController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/EntityHeaderController$2;-><init>(Lcom/android/settings/widget/EntityHeaderController;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 337
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 336
    invoke-direct {p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_2

    .line 339
    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 341
    return-void

    .line 343
    :cond_2
    new-instance v1, Lcom/android/settings/widget/EntityHeaderController$3;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController$3;-><init>(Lcom/android/settings/widget/EntityHeaderController;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v1, 0x7f020226

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 353
    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    return-void

    .line 357
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 358
    return-void

    .line 317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "header"    # Landroid/view/View;

    .prologue
    .line 106
    new-instance v0, Lcom/android/settings/widget/EntityHeaderController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/EntityHeaderController;-><init>(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 365
    .local v0, "result":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    .line 366
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 369
    :cond_0
    return-object v3
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 374
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    :cond_0
    return-void

    .line 376
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;
    .locals 5

    .prologue
    .line 251
    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v4, 0x7f0a0322

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, "entityHeaderContent":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 253
    .local v0, "button1":Landroid/widget/ImageButton;
    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v4, 0x102001a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 254
    .local v1, "button2":Landroid/widget/ImageButton;
    invoke-direct {p0, v2}, Lcom/android/settings/widget/EntityHeaderController;->bindAppInfoLink(Landroid/view/View;)V

    .line 255
    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 256
    iget v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    invoke-direct {p0, v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->bindButton(Landroid/widget/ImageButton;I)V

    .line 257
    return-object p0
.end method

.method done(Landroid/app/Activity;)Landroid/view/View;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public done(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rebindActions"    # Z

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 228
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    const v2, 0x7f0a0323

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 229
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    const v2, 0x7f0a0324

    invoke-direct {p0, v2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 234
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    const v2, 0x7f0a0325

    invoke-direct {p0, v2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 235
    iget-boolean v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f1260

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    const v2, 0x7f0a00b4

    invoke-direct {p0, v2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setText(ILjava/lang/CharSequence;)V

    .line 240
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/widget/EntityHeaderController;->bindHeaderButtons()Lcom/android/settings/widget/EntityHeaderController;

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHeader:Landroid/view/View;

    return-object v1
.end method

.method public done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uiContext"    # Landroid/content/Context;

    .prologue
    .line 215
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 217
    .local v0, "pref":Lcom/android/settings/applications/LayoutPreference;
    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setOrder(I)V

    .line 218
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    .line 219
    const-string/jumbo v1, "pref_app_header"

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 220
    return-object v0
.end method

.method public setAppNotifPrefIntent(Landroid/content/Intent;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "appNotifPrefIntent"    # Landroid/content/Intent;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppNotifPrefIntent:Landroid/content/Intent;

    .line 203
    return-object p0
.end method

.method public setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "action1"    # I
    .param p2, "action2"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction1:I

    .line 187
    iput p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mAction2:I

    .line 188
    return-object p0
.end method

.method public setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "hasAppInfoLink"    # Z

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mHasAppInfoLink:Z

    .line 181
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 137
    :cond_0
    return-object p0
.end method

.method public setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 2
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 146
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 149
    :cond_0
    return-object p0
.end method

.method public setIconContentDescription(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIconContentDescription:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "isInstantApp"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mIsInstantApp:Z

    .line 208
    return-object p0
.end method

.method public setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p1, "appEntry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 163
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 164
    return-object p0
.end method

.method public setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    .line 159
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mPackageName:Ljava/lang/String;

    .line 193
    return-object p0
.end method

.method public setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 125
    iput-object p2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 126
    return-object p0
.end method

.method public setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 176
    :cond_0
    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    .line 169
    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/widget/EntityHeaderController;
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 197
    iput p1, p0, Lcom/android/settings/widget/EntityHeaderController;->mUid:I

    .line 198
    return-object p0
.end method

.method public styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 286
    if-nez p1, :cond_0

    .line 287
    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No activity, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object p0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 291
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-nez v0, :cond_1

    .line 292
    const-string/jumbo v1, "AppDetailFeature"

    const-string/jumbo v2, "No actionbar, cannot style actionbar."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object p0

    .line 296
    :cond_1
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x1010530

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 298
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v1, :cond_2

    .line 299
    iget-object v1, p0, Lcom/android/settings/widget/EntityHeaderController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/widget/EntityHeaderController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v3, p0, Lcom/android/settings/widget/EntityHeaderController;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/ActionBarShadowController;->attachToRecyclerView(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/support/v7/widget/RecyclerView;)Lcom/android/settings/widget/ActionBarShadowController;

    .line 302
    :cond_2
    return-object p0
.end method
