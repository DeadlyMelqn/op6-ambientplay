.class public Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WpsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WpsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WpsFragment"
.end annotation


# static fields
.field private static mWpsSetup:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 139
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "wpsSetup"    # I

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 143
    sput p1, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->mWpsSetup:I

    .line 144
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x21e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/android/settings/wifi/WpsPreferenceController$WpsFragment;->mWpsSetup:I

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
