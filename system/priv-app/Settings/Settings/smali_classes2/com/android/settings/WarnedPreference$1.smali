.class Lcom/android/settings/WarnedPreference$1;
.super Ljava/lang/Object;
.source "WarnedPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WarnedPreference;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WarnedPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/WarnedPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WarnedPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/WarnedPreference$1;->this$0:Lcom/android/settings/WarnedPreference;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    return-void
.end method
