.class Lcom/android/settings/RadioInfo$5;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/RadioInfo;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    .line 1056
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1058
    new-instance v1, Landroid/content/Intent;

    .line 1059
    const-string/jumbo v2, "android.intent.action.VIEW"

    const-string/jumbo v3, "content://icc/sdn"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1058
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1067
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v2, "com.android.phone"

    .line 1068
    const-string/jumbo v3, "com.android.phone.ADNList"

    .line 1067
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1069
    iget-object v2, p0, Lcom/android/settings/RadioInfo$5;->this$0:Lcom/android/settings/RadioInfo;

    invoke-virtual {v2, v1}, Lcom/android/settings/RadioInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 1070
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_0
.end method
