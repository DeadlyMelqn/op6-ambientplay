.class Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;
.super Ljava/lang/Object;
.source "OPRingtonePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->initPreference(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity$2;->this$0:Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/ringtone/OPRingtonePickerActivity;->updateSelected()V

    .line 145
    return-void
.end method
