.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTagDiscovered(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;->this$0:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->-wrap1(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V

    .line 166
    return-void
.end method
