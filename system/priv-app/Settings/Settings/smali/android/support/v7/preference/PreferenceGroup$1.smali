.class Landroid/support/v7/preference/PreferenceGroup$1;
.super Ljava/lang/Object;
.source "PreferenceGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/PreferenceGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v7/preference/PreferenceGroup$1;->this$0:Landroid/support/v7/preference/PreferenceGroup;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/preference/PreferenceGroup$1;->this$0:Landroid/support/v7/preference/PreferenceGroup;

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceGroup;->-get0(Landroid/support/v7/preference/PreferenceGroup;)Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 71
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
