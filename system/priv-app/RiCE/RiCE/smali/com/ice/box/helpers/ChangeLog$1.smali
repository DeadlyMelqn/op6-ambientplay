.class Lcom/ice/box/helpers/ChangeLog$1;
.super Ljava/lang/Object;
.source "ChangeLog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/helpers/ChangeLog;->getDialog(Z)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/helpers/ChangeLog;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/ChangeLog;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ice/box/helpers/ChangeLog$1;->this$0:Lcom/ice/box/helpers/ChangeLog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/ice/box/helpers/ChangeLog$1;->this$0:Lcom/ice/box/helpers/ChangeLog;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ChangeLog;->updateVersionInPreferences()V

    return-void
.end method
