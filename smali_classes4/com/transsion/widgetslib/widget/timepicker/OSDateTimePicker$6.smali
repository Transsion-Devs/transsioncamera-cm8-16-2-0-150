.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V
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

    .line 477
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .registers 4

    .line 484
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$900(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_d

    :cond_9
    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0xc

    .line 485
    :goto_d
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$900(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0xb

    goto :goto_20

    :cond_1e
    const/16 v0, 0xa

    :goto_20
    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 492
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$800(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    .line 493
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

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
