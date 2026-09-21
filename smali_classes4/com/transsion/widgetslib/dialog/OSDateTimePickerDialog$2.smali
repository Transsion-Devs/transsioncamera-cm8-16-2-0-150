.class Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setOnDateTimeSetListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    .line 206
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 207
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    move-result-object v0

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$300(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    move-result-object v1

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object v2

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 208
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 209
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 210
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 211
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 212
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    .line 213
    # getter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 207
    invoke-interface/range {v0 .. v8}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;IIIIII)V

    :cond_62
    return-void
.end method
