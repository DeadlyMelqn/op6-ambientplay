.class final Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPNotificationAdvancedSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

.field private final LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    const-string/jumbo v0, "lock_screen_allow_private_notifications"

    .line 183
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    .line 186
    const-string/jumbo v0, "lock_screen_show_notifications"

    .line 185
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    .line 190
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-wrap1(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)V

    .line 210
    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->this$0:Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;->-wrap0(Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_PRIVATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAdvancedSettings$SettingsObserver;->LOCK_SCREEN_SHOW_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method
