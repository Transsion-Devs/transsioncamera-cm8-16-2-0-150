.class Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
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

    .line 180
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;)V
    .registers 3

    .line 183
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # setter for: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$002(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 184
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;->this$0:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    # invokes: Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->onChanged()V
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->access$100(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    return-void
.end method
