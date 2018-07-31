.class final synthetic Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/settings/OPGearPreference$OnGearClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Lcom/android/settings/OPGearPreference;)V
    .locals 2
    .param p1, "arg0"    # Lcom/android/settings/OPGearPreference;

    .prologue
    iget-object v0, p0, Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iget-object v1, p0, Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->lambda$-com_android_settings_inputmethod_InputMethodAndLanguageSettings_46717(Landroid/content/Intent;Lcom/android/settings/OPGearPreference;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/OPGearPreference;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/-$Lambda$7MpqFIUuFZqAXvg4F0evMBd2rMo;->$m$0(Lcom/android/settings/OPGearPreference;)V

    return-void
.end method
