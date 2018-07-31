.class Lcom/android/settings/DateTimeSettings$4;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->onDateSet(Landroid/widget/DatePicker;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$day:I

.field final synthetic val$month:I

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/app/Activity;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/DateTimeSettings;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/settings/DateTimeSettings$4;->val$year:I

    iput p4, p0, Lcom/android/settings/DateTimeSettings$4;->val$month:I

    iput p5, p0, Lcom/android/settings/DateTimeSettings$4;->val$day:I

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/android/settings/DateTimeSettings$4;->val$year:I

    iget v2, p0, Lcom/android/settings/DateTimeSettings$4;->val$month:I

    iget v3, p0, Lcom/android/settings/DateTimeSettings$4;->val$day:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings$4;->this$0:Lcom/android/settings/DateTimeSettings;

    iget-object v1, p0, Lcom/android/settings/DateTimeSettings$4;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 203
    return-void
.end method
