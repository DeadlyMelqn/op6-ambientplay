.class Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;
.super Ljava/lang/Object;
.source "TunerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;->this$1:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment$1;->this$1:Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "seen_tuner_warning"

    const/4 v2, 0x1

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    return-void
.end method
