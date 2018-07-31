.class final synthetic Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/support/v7/preference/Preference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ConfigureNotificationSettings;->lambda$-com_android_settings_notification_ConfigureNotificationSettings_13076(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/notification/-$Lambda$LCWObp2KSHYJ82o6npbwHIzQjhY;->$m$0(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method
