.class Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;
.super Ljava/lang/Object;
.source "UsbModeChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

.field final synthetic val$disallowedByAdmin:Z

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;ZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    iput p3, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$disallowedByAdmin:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get2(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 188
    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 190
    return-void

    .line 192
    :cond_0
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get0(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->val$mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbBackend;->setMode(I)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;->this$0:Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->finish()V

    .line 199
    return-void
.end method
