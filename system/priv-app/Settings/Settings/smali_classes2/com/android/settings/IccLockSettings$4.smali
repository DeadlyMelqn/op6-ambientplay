.class Lcom/android/settings/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/IccLockSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get1(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
