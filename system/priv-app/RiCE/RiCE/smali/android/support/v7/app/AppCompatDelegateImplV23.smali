.class Landroid/support/v7/app/AppCompatDelegateImplV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
    }
.end annotation


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p3}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V

    const-string p2, "uimode"

    .line 33
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method


# virtual methods
.method mapNightMode(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 46
    iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;

    .line 47
    invoke-virtual/range {v0 .. v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 52
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I

    move-result p0

    return p0
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .line 40
    new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V

    return-object v0
.end method
