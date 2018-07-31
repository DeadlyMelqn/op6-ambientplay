.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;
.super Ljava/lang/Thread;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    .line 971
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 973
    const-string/jumbo v3, "UserSwitcherController"

    const-string/jumbo v4, "switchTo:createUser:START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    .line 975
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    const v5, 0x7f110592

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-virtual {v3, v4, v6}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 976
    .local v2, "user":Landroid/content/pm/UserInfo;
    const-string/jumbo v3, "UserSwitcherController"

    const-string/jumbo v4, "switchTo:createUser:END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    if-nez v2, :cond_0

    .line 980
    return-void

    .line 982
    :cond_0
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 983
    .local v1, "id":I
    invoke-static {v1, v6}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/drawable/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 985
    .local v0, "icon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1, v0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 986
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;

    iget-object v3, v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController$AddUserDialog;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    .line 987
    return-void
.end method
