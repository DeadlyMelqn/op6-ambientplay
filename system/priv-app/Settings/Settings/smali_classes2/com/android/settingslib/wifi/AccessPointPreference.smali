.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field private static final FRICTION_ATTRS:[I

.field private static final STATE_METERED:[I

.field private static final STATE_SECURED:[I

.field private static final WIFI_CONNECTION_STRENGTH:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private final mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private mWifiSpeed:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [I

    .line 44
    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v2

    .line 43
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    .line 47
    new-array v0, v3, [I

    .line 48
    sget v1, Lcom/android/settingslib/R$attr;->state_metered:I

    aput v1, v0, v2

    .line 47
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    .line 51
    new-array v0, v3, [I

    .line 52
    sget v1, Lcom/android/settingslib/R$attr;->wifi_friction:I

    aput v1, v0, v2

    .line 51
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 56
    sget v1, Lcom/android/settingslib/R$string;->accessibility_no_wifi:I

    aput v1, v0, v2

    .line 57
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v3

    .line 58
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 59
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 60
    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 74
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 320
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 92
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 93
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 94
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 6
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "iconResId"    # I
    .param p5, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 124
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 74
    iput v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 320
    new-instance v3, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 125
    sget v3, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 126
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 127
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 128
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 129
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 130
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 131
    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    .line 135
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 140
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 143
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 144
    sget v3, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    .line 143
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 145
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "frictionSld":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 6
    .param p1, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cache"    # Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    .param p4, "forSavedNetworks"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 99
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 74
    iput v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 320
    new-instance v3, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    .line 100
    sget v3, Lcom/android/settingslib/R$layout;->access_point_friction_widget:I

    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 101
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 102
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 103
    iput-boolean p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    .line 104
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    .line 105
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 109
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->FRICTION_ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 114
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    :cond_0
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    .line 117
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 118
    sget v3, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    .line 119
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 120
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .local v1, "frictionSld":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method private bindFrictionImage(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "frictionImageView"    # Landroid/widget/ImageView;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 211
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 212
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    return-void

    .line 208
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isMetered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mFrictionSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/android/settingslib/wifi/AccessPointPreference;->STATE_METERED:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0
.end method

.method static buildContentDescription(Landroid/content/Context;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;
    .param p2, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 288
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 290
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v0, v3, v5

    const-string/jumbo v4, ","

    aput-object v4, v3, v6

    aput-object v2, v3, v7

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 294
    .local v1, "level":I
    if-ltz v1, :cond_1

    sget-object v3, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 295
    new-array v3, v8, [Ljava/lang/CharSequence;

    aput-object v0, v3, v5

    const-string/jumbo v4, ","

    aput-object v4, v3, v6

    .line 296
    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v4, v4, v1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 295
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 298
    :cond_1
    new-array v4, v8, [Ljava/lang/CharSequence;

    aput-object v0, v4, v5

    const-string/jumbo v3, ","

    aput-object v3, v4, v6

    .line 299
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    if-nez v3, :cond_2

    .line 300
    sget v3, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_none:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    :goto_0
    aput-object v3, v4, v7

    .line 298
    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 301
    :cond_2
    sget v3, Lcom/android/settingslib/R$string;->accessibility_wifi_security_type_secured:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static generatePreferenceKey(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 3
    .param p0, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :goto_0
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private postNotifyChanged()V
    .locals 3

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    .line 217
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static setTitle(Lcom/android/settingslib/wifi/AccessPointPreference;Lcom/android/settingslib/wifi/AccessPoint;Z)V
    .locals 1
    .param p0, "preference"    # Lcom/android/settingslib/wifi/AccessPointPreference;
    .param p1, "ap"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "savedNetworks"    # Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 276
    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method protected notifyChanged()V
    .locals 2

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 272
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .prologue
    const/4 v4, 0x0

    .line 153
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 154
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v2, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 159
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 160
    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 163
    :cond_1
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    .line 164
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 169
    :cond_2
    iget-object v2, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    sget v2, Lcom/android/settingslib/R$id;->friction_icon:I

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 172
    .local v1, "frictionImageView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->bindFrictionImage(Landroid/widget/ImageView;)V

    .line 173
    return-void
.end method

.method public onLevelChanged()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    .line 306
    return-void
.end method

.method public refresh()V
    .locals 5

    .prologue
    .line 238
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v3, :cond_0

    return-void

    .line 240
    :cond_0
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v1

    .line 248
    .local v1, "level":I
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v2

    .line 249
    .local v2, "wifiSpeed":I
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    if-eq v2, v3, :cond_2

    .line 250
    :cond_1
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    .line 251
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    .line 252
    iget v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v3, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 256
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    .line 258
    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {v3, p0, v4}, Lcom/android/settingslib/wifi/AccessPointPreference;->buildContentDescription(Landroid/content/Context;Landroid/support/v7/preference/Preference;Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    .line 262
    return-void

    .line 243
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "level":I
    .end local v2    # "wifiSpeed":I
    :cond_3
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 259
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "level":I
    .restart local v2    # "wifiSpeed":I
    :cond_4
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 225
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    .line 178
    return-void

    .line 180
    :cond_0
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mWifiSpeed:I

    invoke-static {p2, v1}, Lcom/android/settingslib/TronUtils;->logWifiSettingsSpeed(Landroid/content/Context;I)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x0

    .line 183
    invoke-static {p1, v2, v1}, Landroid/net/NetworkBadging;->getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 188
    const v1, 0x1010435

    invoke-static {p2, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    goto :goto_0
.end method
