.class Lcom/oneplus/settings/better/OPNightMode$1;
.super Landroid/database/ContentObserver;
.source "OPNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPNightMode;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    .line 305
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 308
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-wrap0(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 309
    .local v1, "progress":I
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setSeekBarProgress(I)V

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-wrap0(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "reading_mode_status"

    invoke-static {v3, v4, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v8, :cond_3

    const/4 v2, 0x1

    .line 313
    .local v2, "readingmodeEnbale":Z
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-wrap0(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;

    move-result-object v3

    .line 317
    const-string/jumbo v4, "night_display_activated"

    .line 316
    invoke-static {v3, v4, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v8, :cond_4

    const/4 v0, 0x1

    .line 318
    .local v0, "activated":Z
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode$1;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPNightMode;->-get1(Lcom/oneplus/settings/better/OPNightMode;)Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    .line 321
    :cond_2
    return-void

    .line 312
    .end local v0    # "activated":Z
    .end local v2    # "readingmodeEnbale":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "readingmodeEnbale":Z
    goto :goto_0

    .line 316
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "activated":Z
    goto :goto_1
.end method
