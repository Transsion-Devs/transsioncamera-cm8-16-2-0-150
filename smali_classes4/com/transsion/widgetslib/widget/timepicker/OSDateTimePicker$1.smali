.class Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initYearWheel()V
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

    .line 163
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWheelItemChanged(II)V
    .registers 4

    .line 171
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    # getter for: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$000(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I

    move-result v0

    add-int/2addr v0, p2

    # invokes: Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onYearChange(I)V
    invoke-static {p1, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->access$100(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V

    .line 172
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;->this$0:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

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
