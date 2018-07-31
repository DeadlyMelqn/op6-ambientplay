.class public Lcom/android/settings/enterprise/AdminGrantedMicrophonePermissionPreferenceController;
.super Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;
.source "AdminGrantedMicrophonePermissionPreferenceController.java"


# static fields
.field private static final KEY_ENTERPRISE_PRIVACY_NUMBER_MICROPHONE_ACCESS_PACKAGES:Ljava/lang/String; = "enterprise_privacy_number_microphone_access_packages"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settings/core/lifecycle/Lifecycle;
    .param p3, "async"    # Z

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 31
    const-string/jumbo v5, "android.permission-group.MICROPHONE"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 30
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;-><init>(Landroid/content/Context;Lcom/android/settings/core/lifecycle/Lifecycle;Z[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "enterprise_privacy_number_microphone_access_packages"

    return-object v0
.end method
