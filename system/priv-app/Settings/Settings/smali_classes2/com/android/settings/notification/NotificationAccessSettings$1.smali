.class final Lcom/android/settings/notification/NotificationAccessSettings$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAccessSettings;->disable(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cn:Landroid/content/ComponentName;

.field final synthetic val$parent:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$cn:Landroid/content/ComponentName;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 120
    :cond_0
    return-void
.end method
