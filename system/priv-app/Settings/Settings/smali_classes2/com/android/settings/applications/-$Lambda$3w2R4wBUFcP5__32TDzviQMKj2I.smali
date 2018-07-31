.class final synthetic Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/GearPreference$OnGearClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lcom/android/settings/GearPreference;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/settings/GearPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/DefaultAppPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/DefaultAppPreferenceController;->lambda$-com_android_settings_applications_DefaultAppPreferenceController_2570(Landroid/content/Intent;Lcom/android/settings/GearPreference;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/GearPreference;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/applications/-$Lambda$3w2R4wBUFcP5__32TDzviQMKj2I;->$m$0(Lcom/android/settings/GearPreference;)V

    return-void
.end method
