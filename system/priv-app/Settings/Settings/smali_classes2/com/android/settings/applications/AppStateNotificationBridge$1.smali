.class final Lcom/android/settings/applications/AppStateNotificationBridge$1;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v2, 0x0

    .line 74
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    return v2

    .line 77
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v1, :cond_2

    .line 78
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/NotificationBackend$AppRow;

    .line 79
    .local v0, "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    iget-boolean v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    return v1

    .line 81
    .end local v0    # "row":Lcom/android/settings/notification/NotificationBackend$AppRow;
    :cond_2
    return v2
.end method

.method public init()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
