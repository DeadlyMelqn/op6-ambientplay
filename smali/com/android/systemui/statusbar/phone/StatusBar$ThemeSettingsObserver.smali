.class Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBar;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6058
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 6059
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6060
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 6063
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6065
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "device_theme"

    .line 6064
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6068
    const-string/jumbo v1, "device_accent"

    .line 6067
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 6070
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 6074
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;->update()V

    .line 6075
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 6078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTheme()V

    .line 6079
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$ThemeSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateAccent()V

    .line 6080
    return-void
.end method
