.class Landroid/support/v7/preference/PreferenceFragmentCompat$2;
.super Ljava/lang/Object;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/PreferenceFragmentCompat;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$2;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$2;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/preference/PreferenceFragmentCompat$2;->this$0:Landroid/support/v7/preference/PreferenceFragmentCompat;

    invoke-static {v1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->-get0(Landroid/support/v7/preference/PreferenceFragmentCompat;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 153
    return-void
.end method
