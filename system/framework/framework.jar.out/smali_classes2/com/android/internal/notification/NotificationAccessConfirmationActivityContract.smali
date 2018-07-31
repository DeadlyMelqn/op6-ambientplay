.class public final Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;
.super Ljava/lang/Object;
.source "NotificationAccessConfirmationActivityContract.java"


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "component_name"

.field public static final EXTRA_PACKAGE_TITLE:Ljava/lang/String; = "package_title"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Landroid/content/ComponentName;

    .line 24
    const-string/jumbo v1, "com.android.settings"

    .line 25
    const-string/jumbo v2, "com.android.settings.notification.NotificationAccessConfirmationActivity"

    .line 23
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static launcherIntent(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "userId"    # I
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "packageTitle"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    sget-object v1, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->COMPONENT_NAME:Landroid/content/ComponentName;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "user_id"

    .line 31
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "component_name"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "package_title"

    .line 31
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
