.class Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/tts/TtsEngineSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;->this$1:Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1$1;->this$1:Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    iget-object v0, v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/support/v7/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 82
    return-void
.end method