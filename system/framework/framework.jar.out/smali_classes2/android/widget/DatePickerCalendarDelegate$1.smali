.class Landroid/widget/DatePickerCalendarDelegate$1;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/widget/DayPickerView$OnDaySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDaySelected(Landroid/widget/DayPickerView;Landroid/icu/util/Calendar;)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DayPickerView;
    .param p2, "day"    # Landroid/icu/util/Calendar;

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    iget-object v0, v0, Landroid/widget/DatePickerCalendarDelegate;->mCurrentDate:Landroid/icu/util/Calendar;

    invoke-virtual {p2}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 239
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$1;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {v0, v1, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap0(Landroid/widget/DatePickerCalendarDelegate;ZZ)V

    .line 240
    return-void
.end method
