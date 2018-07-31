.class Lcom/android/settings/notification/ZenModePrioritySettings$4;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/notification/ZenModePrioritySettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.oneplus.contacts.action.FAVORITES_PEOPLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
