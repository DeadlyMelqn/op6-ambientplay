.class Lcom/android/settings/wifi/WifiSettings$7;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;

.field final synthetic val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$7;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$7;->val$accessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1150
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1151
    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 1153
    :cond_0
    return-void
.end method
