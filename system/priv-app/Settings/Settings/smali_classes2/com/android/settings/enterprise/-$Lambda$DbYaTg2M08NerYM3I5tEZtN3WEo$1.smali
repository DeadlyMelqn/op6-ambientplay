.class final synthetic Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;

    iget-object v1, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/enterprise/AdminGrantedPermissionsPreferenceControllerBase;->lambda$-com_android_settings_enterprise_AdminGrantedPermissionsPreferenceControllerBase_2030(Landroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method private final synthetic $m$1(I)V
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    iget-object v0, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;

    iget-object v1, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/enterprise/EnterpriseInstalledPackagesPreferenceController;->lambda$-com_android_settings_enterprise_EnterpriseInstalledPackagesPreferenceController_1838(Landroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->$id:B

    iput-object p2, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNumberOfAppsResult(I)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->$m$0(I)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/-$Lambda$DbYaTg2M08NerYM3I5tEZtN3WEo$1;->$m$1(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
