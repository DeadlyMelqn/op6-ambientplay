.class Lcom/android/settings/wifi/WifiAPITest$2;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiAPITest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiAPITest;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$2;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 131
    return-void
.end method
