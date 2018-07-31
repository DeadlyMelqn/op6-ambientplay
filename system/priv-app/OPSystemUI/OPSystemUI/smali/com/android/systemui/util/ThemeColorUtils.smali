.class public Lcom/android/systemui/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field private static final synthetic -com-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues:[I

.field public static QS_ACCENT:I

.field public static QS_BATTERY_BACKGROUND:I

.field public static QS_BUTTON:I

.field public static QS_EDIT_BOTTOM:I

.field public static QS_INDICATOR:I

.field public static QS_INDICATOR_INACTIVE:I

.field public static QS_MENU_BACKGROUND:I

.field public static QS_PANEL_PRIMARY:I

.field public static QS_PANEL_SECONDARY:I

.field public static QS_PRIMARY_TEXT:I

.field public static QS_PROGRESS_BACKGROUND:I

.field public static QS_SECONDARY_TEXT:I

.field public static QS_SEPARATOR:I

.field public static QS_TEXT:I

.field public static QS_TILE_DISABLE:I

.field public static QS_TILE_OFF:I

.field private static sAccentColor:I

.field private static sColors:[I

.field private static sCurrentTheme:I

.field private static sSpecialTheme:Z

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->-com-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->-com-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->values()[Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-virtual {v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/android/systemui/util/ThemeColorUtils;->-com-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 22
    sput-boolean v1, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 26
    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->QS_TEXT:I

    .line 27
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PRIMARY_TEXT:I

    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SECONDARY_TEXT:I

    .line 29
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_OFF:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_TILE_DISABLE:I

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_PRIMARY:I

    .line 32
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PANEL_SECONDARY:I

    .line 33
    const/4 v0, 0x7

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BUTTON:I

    .line 34
    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_BATTERY_BACKGROUND:I

    .line 35
    const/16 v0, 0x9

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR:I

    .line 36
    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_INDICATOR_INACTIVE:I

    .line 37
    const/16 v0, 0xb

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_PROGRESS_BACKGROUND:I

    .line 38
    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_EDIT_BOTTOM:I

    .line 39
    const/16 v0, 0xd

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_MENU_BACKGROUND:I

    .line 40
    const/16 v0, 0xe

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_SEPARATOR:I

    .line 43
    const/16 v0, 0x64

    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 1
    .param p0, "colorType"    # I

    .prologue
    .line 97
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    .line 98
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    return v0

    .line 100
    :cond_0
    sget-object v0, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getCurrentTheme()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getPopTheme()I
    .locals 2

    .prologue
    const v1, 0x7f120419

    .line 104
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    packed-switch v0, :pswitch_data_0

    .line 112
    return v1

    .line 106
    :pswitch_0
    const v0, 0x7f12041b

    return v0

    .line 108
    :pswitch_1
    const v0, 0x7f12041a

    return v0

    .line 110
    :pswitch_2
    return v1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getSpecialThemeAccentColor()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    .line 151
    .local v0, "type":Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->-getcom-oneplus-custom-utils-OpCustomizeSettings$CUSTOM_TYPESwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 153
    :pswitch_0
    const-string/jumbo v1, "#FFFF2837"

    return-object v1

    .line 155
    :pswitch_1
    const-string/jumbo v1, "#FFFBC02D"

    return-object v1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getThumbBackground()I
    .locals 2

    .prologue
    const v1, 0x7f0803db

    .line 116
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    packed-switch v0, :pswitch_data_0

    .line 124
    return v1

    .line 118
    :pswitch_0
    const v0, 0x7f0803dc

    return v0

    .line 120
    :pswitch_1
    return v1

    .line 122
    :pswitch_2
    return v1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    .local v1, "res":Landroid/content/res/Resources;
    sget v5, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 52
    const v5, 0x7f03004b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/Utils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    .line 58
    .local v0, "currentTheme":I
    invoke-static {p0}, Lcom/android/systemui/util/Utils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v4

    .line 59
    .local v4, "specialTheme":Z
    sget v5, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v5, v0, :cond_1

    sget-boolean v5, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v5, v4, :cond_2

    .line 61
    :cond_1
    sput v0, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    .line 63
    sput-boolean v4, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    .line 65
    sget-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    sget v6, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    aget-object v3, v5, v6

    .line 66
    .local v3, "resName":Ljava/lang/String;
    const-string/jumbo v5, "com.android.systemui"

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 67
    .local v2, "resId":I
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    sput-object v5, Lcom/android/systemui/util/ThemeColorUtils;->sColors:[I

    .line 69
    .end local v2    # "resId":I
    .end local v3    # "resName":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-string/jumbo v0, "#FF2196F3"

    .line 74
    .local v0, "color":Ljava/lang/String;
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    if-nez v1, :cond_1

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    const-string/jumbo v0, "#FF2196F3"

    .line 93
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/systemui/util/ThemeColorUtils;->sAccentColor:I

    .line 94
    return-void

    .line 79
    :cond_1
    sget v1, Lcom/android/systemui/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    sget-boolean v1, Lcom/android/systemui/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eqz v1, :cond_2

    .line 84
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getSpecialThemeAccentColor()Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_1
    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v0, "#FF42A5F5"

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
