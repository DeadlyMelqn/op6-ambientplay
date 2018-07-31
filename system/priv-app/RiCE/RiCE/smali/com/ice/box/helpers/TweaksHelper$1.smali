.class Lcom/ice/box/helpers/TweaksHelper$1;
.super Ljava/lang/Object;
.source "TweaksHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ice/box/helpers/TweaksHelper;->createCSCNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/helpers/TweaksHelper;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/TweaksHelper;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/ice/box/helpers/TweaksHelper$1;->this$0:Lcom/ice/box/helpers/TweaksHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "am start com.sec.android.Preconfig/.Preconfig"

    .line 268
    invoke-static/range {p0 .. p0}, Lcom/ice/box/helpers/RootUtils;->runCommand(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
