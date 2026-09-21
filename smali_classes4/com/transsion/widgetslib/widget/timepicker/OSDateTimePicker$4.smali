.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthDayWheel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .registers 6

    const/4 v0, 0x6

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-le p2, p1, :cond_2e

    sub-int p1, p2, p1

    if-le p1, v1, :cond_23

    .line 368
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    sub-int/2addr p2, v2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$000(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMonthDayData(IZ)V
    invoke-static {p1, p2, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    goto :goto_57

    .line 370
    :cond_23
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_57

    :cond_2e
    if-ge p2, p1, :cond_57

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_4d

    .line 375
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    add-int/2addr p2, v2

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$700(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMonthDayData(IZ)V
    invoke-static {p1, p2, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V

    goto :goto_57

    .line 377
    :cond_4d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    add-int/2addr p2, v2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 380
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$800(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    .line 381
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onVibrate()V
    invoke-static {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$200(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    return-void
.end method

.method public onWheelScroll(I)V
    .registers 2

    return-void
.end method

.method public onWheelScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onWheelSelected(I)V
    .registers 2

    return-void
.end method
