.class Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppCompatWindowCallbackV14"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/app/AppCompatDelegateImplV14;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 267
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    .line 268
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->isHandleNativeActionModesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    .line 278
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 4
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v3, 0x0

    .line 288
    new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;

    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    .line 292
    .local v0, "callbackWrapper":Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;
    iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;

    invoke-virtual {v2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;

    move-result-object v1

    .line 294
    .local v1, "supportActionMode":Landroid/support/v7/view/ActionMode;
    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v0, v1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;

    move-result-object v2

    return-object v2

    .line 298
    :cond_0
    return-object v3
.end method
