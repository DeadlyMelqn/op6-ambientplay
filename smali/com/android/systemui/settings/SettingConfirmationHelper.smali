.class public final Lcom/android/systemui/settings/SettingConfirmationHelper;
.super Ljava/lang/Object;
.source "SettingConfirmationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/systemui/settings/SettingConfirmationHelper;->setSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static get(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .prologue
    .line 84
    if-nez p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "resolver == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    if-nez p1, :cond_1

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settingName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-static {p0, p1}, Lcom/android/systemui/settings/SettingConfirmationHelper;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    return p2

    .line 93
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 95
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSetting(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static prompt(Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V
    .locals 7
    .param p0, "snackbar"    # Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;
    .param p6, "handler"    # Landroid/os/Handler;

    .prologue
    .line 158
    if-nez p0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "snackbar == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    if-nez p1, :cond_1

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "settingName == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    if-nez p3, :cond_2

    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "title == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_2
    if-nez p4, :cond_3

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_3
    if-nez p5, :cond_4

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_4
    if-nez p6, :cond_5

    .line 174
    new-instance p6, Landroid/os/Handler;

    .end local p6    # "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    .restart local p6    # "handler":Landroid/os/Handler;
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 179
    .local v6, "resolver":Landroid/content/ContentResolver;
    invoke-static {v6, p1}, Lcom/android/systemui/settings/SettingConfirmationHelper;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    new-instance v0, Lcom/android/systemui/settings/SettingConfirmationHelper$3;

    invoke-direct {v0, p2, p5, p1}, Lcom/android/systemui/settings/SettingConfirmationHelper$3;-><init>(ZLcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Ljava/lang/String;)V

    invoke-virtual {p6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    new-instance v4, Lcom/android/systemui/settings/SettingConfirmationHelper$4;

    invoke-direct {v4, p1, v6, p2, p5}, Lcom/android/systemui/settings/SettingConfirmationHelper$4;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;ZLcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/SettingConfirmationSnackbarView;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Landroid/os/Handler;)V

    .line 252
    :goto_0
    return-void

    .line 182
    :pswitch_0
    new-instance v0, Lcom/android/systemui/settings/SettingConfirmationHelper$1;

    invoke-direct {v0, p5, p1}, Lcom/android/systemui/settings/SettingConfirmationHelper$1;-><init>(Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Ljava/lang/String;)V

    invoke-virtual {p6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 193
    :pswitch_1
    new-instance v0, Lcom/android/systemui/settings/SettingConfirmationHelper$2;

    invoke-direct {v0, p5, p1}, Lcom/android/systemui/settings/SettingConfirmationHelper$2;-><init>(Lcom/android/systemui/settings/SettingConfirmationHelper$OnSettingChoiceListener;Ljava/lang/String;)V

    invoke-virtual {p6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static setSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 71
    return-void
.end method
