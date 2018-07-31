.class public Landroid/content/res/ThemeController;
.super Ljava/lang/Object;
.source "ThemeController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeController"

.field public static final THEME_ANDROID:I = 0x2

.field public static final THEME_BLACK:I = 0x1

.field public static final THEME_BLACK_BLUE:I = 0xc

.field public static final THEME_BLACK_GOLDEN:I = 0x8

.field public static final THEME_BLACK_GREEN:I = 0xa

.field public static final THEME_BLACK_PINK:I = 0xe

.field public static final THEME_BLACK_PURPLE:I = 0xb

.field public static final THEME_BLACK_RED:I = 0xd

.field public static final THEME_BLACK_YELLOW:I = 0x9

.field public static final THEME_WHITE:I = 0x0

.field public static final THEME_WHITE_BLUE:I = 0x5

.field public static final THEME_WHITE_GOLDEN:I = 0x1

.field public static final THEME_WHITE_GREEN:I = 0x3

.field public static final THEME_WHITE_PINK:I = 0x7

.field public static final THEME_WHITE_PURPLE:I = 0x4

.field public static final THEME_WHITE_RED:I = 0x6

.field public static final THEME_WHITE_YELLOW:I = 0x2

.field private static mThemeController:Landroid/content/res/ThemeController;


# instance fields
.field private final mBlackThemeFolderPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mWhiteThemeFolderPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, "/system/media/themes/oneplus_white/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mWhiteThemeFolderPath:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "/system/media/themes/oneplus_black/"

    iput-object v0, p0, Landroid/content/res/ThemeController;->mBlackThemeFolderPath:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroid/content/res/ThemeController;

    invoke-direct {v0, p0}, Landroid/content/res/ThemeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    .line 51
    :cond_0
    sget-object v0, Landroid/content/res/ThemeController;->mThemeController:Landroid/content/res/ThemeController;

    return-object v0
.end method


# virtual methods
.method public checkHasTheme(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v4

    .line 59
    .local v4, "themeState":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "apkName":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 61
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/system/media/themes/oneplus_black/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v3, "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 73
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v3    # "themeDirectory":Ljava/io/File;
    .end local v4    # "themeState":I
    :goto_0
    return v2

    .line 63
    .restart local v0    # "apkName":Ljava/lang/String;
    .restart local v4    # "themeState":I
    :cond_0
    if-nez v4, :cond_1

    .line 64
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/system/media/themes/oneplus_white/"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v3    # "themeDirectory":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "result":Z
    goto :goto_0

    .line 67
    .end local v2    # "result":Z
    .end local v3    # "themeDirectory":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "result":Z
    goto :goto_0

    .line 69
    .end local v0    # "apkName":Ljava/lang/String;
    .end local v2    # "result":Z
    .end local v4    # "themeState":I
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ThemeController"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v2, 0x0

    .restart local v2    # "result":Z
    goto :goto_0
.end method

.method public getColorState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "colorState":I
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_white_mode_accent_color_index"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oem_black_mode_accent_color_index"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public varargs getCorrectColorResource(II[I)I
    .locals 10
    .param p1, "whiteTheme"    # I
    .param p2, "blackTheme"    # I
    .param p3, "colorTheme"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->isSpecialTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    invoke-static {}, Landroid/util/OpWallpaperUtils$CustomizationSettings;->getCustomization()Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    move-result-object v1

    .line 126
    .local v1, "customization":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->SW:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v4, v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    const/16 v4, 0xe

    aget v4, p3, v4

    return v4

    .line 128
    :cond_0
    sget-object v4, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->AVG:Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v4, v1}, Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    const/16 v4, 0xf

    aget v4, p3, v4

    return v4

    .line 132
    .end local v1    # "customization":Landroid/util/OpWallpaperUtils$CustomizationSettings$CUSTOM_TYPE;
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getColorState()I

    move-result v0

    .line 133
    .local v0, "colorState":I
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v3

    .line 134
    .local v3, "themeState":I
    const-string/jumbo v4, "ThemeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ColorState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", ThemeState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    array-length v4, p3

    const/16 v5, 0x10

    if-eq v4, v5, :cond_2

    .line 136
    const-string/jumbo v4, "ThemeController"

    const-string/jumbo v5, "The length of colorTheme isn\'t 16"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    if-eq v3, v9, :cond_3

    if-eqz v0, :cond_3

    .line 140
    packed-switch v0, :pswitch_data_0

    .line 182
    const-string/jumbo v4, "ThemeController"

    const-string/jumbo v5, "return whitetheme"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return p1

    .line 142
    :pswitch_0
    const/4 v4, 0x0

    :try_start_0
    aget v4, p3, v4

    return v4

    .line 144
    :pswitch_1
    const/4 v4, 0x1

    aget v4, p3, v4

    return v4

    .line 146
    :pswitch_2
    const/4 v4, 0x2

    aget v4, p3, v4

    return v4

    .line 148
    :pswitch_3
    const/4 v4, 0x3

    aget v4, p3, v4

    return v4

    .line 150
    :pswitch_4
    const/4 v4, 0x4

    aget v4, p3, v4

    return v4

    .line 152
    :pswitch_5
    const/4 v4, 0x5

    aget v4, p3, v4

    return v4

    .line 154
    :pswitch_6
    const/4 v4, 0x6

    aget v4, p3, v4

    return v4

    .line 156
    :pswitch_7
    const/4 v4, 0x7

    aget v4, p3, v4

    return v4

    .line 158
    :pswitch_8
    const/16 v4, 0x8

    aget v4, p3, v4

    return v4

    .line 160
    :pswitch_9
    const/16 v4, 0x9

    aget v4, p3, v4

    return v4

    .line 162
    :pswitch_a
    const/16 v4, 0xa

    aget v4, p3, v4

    return v4

    .line 164
    :pswitch_b
    const/16 v4, 0xb

    aget v4, p3, v4

    return v4

    .line 166
    :pswitch_c
    const/16 v4, 0xc

    aget v4, p3, v4

    return v4

    .line 168
    :pswitch_d
    const/16 v4, 0xd

    aget v4, p3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ThemeController"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v7

    .line 175
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    if-ne v3, v8, :cond_4

    .line 176
    const-string/jumbo v4, "ThemeController"

    const-string/jumbo v5, "return blacktheme"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return p2

    .line 179
    :cond_4
    const-string/jumbo v4, "ThemeController"

    const-string/jumbo v5, "return whitetheme"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return p1

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public varargs getCorrectThemeResource([I)I
    .locals 2
    .param p1, "resIds"    # [I

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-virtual {p0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 107
    aget v0, p1, v1

    return v0

    .line 109
    :cond_0
    const/4 v0, 0x0

    aget v0, p1, v0

    return v0
.end method

.method public getThemeState()I
    .locals 5

    .prologue
    .line 78
    const/4 v1, 0x2

    .line 80
    .local v1, "themeState":I
    :try_start_0
    iget-object v2, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_black_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v2, "ThemeController"

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSpecialTheme()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    iget-object v2, p0, Landroid/content/res/ThemeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 115
    const-string/jumbo v3, "oem_special_theme"

    .line 114
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
