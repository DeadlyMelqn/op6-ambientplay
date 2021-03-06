.class Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field private final ZEN_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    .line 151
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 148
    const-string/jumbo v0, "has_new_version_to_update"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    .line 149
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->ZEN_MODE:Landroid/net/Uri;

    .line 153
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 173
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-wrap0(Lcom/android/settings/dashboard/DashboardSummary;)V

    .line 167
    :cond_2
    :goto_0
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummary;->-get2(Lcom/android/settings/dashboard/DashboardSummary;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 176
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 177
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v1}, Lcom/android/settings/dashboard/DashboardSummary;->-get0(Lcom/android/settings/dashboard/DashboardSummary;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummary$SystemUpdateObserver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    return-void
.end method
