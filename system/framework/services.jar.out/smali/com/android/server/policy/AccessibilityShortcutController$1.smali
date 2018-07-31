.class Lcom/android/server/policy/AccessibilityShortcutController$1;
.super Landroid/database/ContentObserver;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/AccessibilityShortcutController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/AccessibilityShortcutController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/AccessibilityShortcutController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/AccessibilityShortcutController$1;->this$0:Lcom/android/server/policy/AccessibilityShortcutController;

    .line 86
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController$1;->this$0:Lcom/android/server/policy/AccessibilityShortcutController;

    invoke-static {v0}, Lcom/android/server/policy/AccessibilityShortcutController;->-get0(Lcom/android/server/policy/AccessibilityShortcutController;)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/policy/AccessibilityShortcutController$1;->this$0:Lcom/android/server/policy/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/AccessibilityShortcutController;->onSettingsChanged()V

    .line 92
    :cond_0
    return-void
.end method
