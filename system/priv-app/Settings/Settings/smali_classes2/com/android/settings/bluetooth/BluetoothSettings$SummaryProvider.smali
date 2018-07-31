.class Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
.implements Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;
    .param p3, "bluetoothManager"    # Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 586
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 587
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 588
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    .line 589
    return-void
.end method


# virtual methods
.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 601
    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings$SummaryProvider;->mSummaryUpdater:Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothSummaryUpdater;->register(Z)V

    .line 594
    return-void
.end method
