.class final Lcom/android/setupwizardlib/util/SystemBarHelper$2;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"

# interfaces
.implements Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/util/SystemBarHelper;->removeImmersiveFlagsFromDecorView(Landroid/view/Window;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$vis:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$2;->val$vis:I

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDecorViewInstalled(Landroid/view/View;)V
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    .line 235
    iget v0, p0, Lcom/android/setupwizardlib/util/SystemBarHelper$2;->val$vis:I

    invoke-static {p1, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->removeVisibilityFlag(Landroid/view/View;I)V

    .line 236
    return-void
.end method
