.class Lcom/android/settings/users/UserSettings$11;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/users/UserSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 622
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$11;->this$0:Lcom/android/settings/users/UserSettings;

    if-nez p2, :cond_0

    .line 623
    const/4 v0, 0x1

    .line 622
    :goto_0
    invoke-static {v1, v0}, Lcom/android/settings/users/UserSettings;->-wrap7(Lcom/android/settings/users/UserSettings;I)V

    .line 625
    return-void

    .line 624
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
