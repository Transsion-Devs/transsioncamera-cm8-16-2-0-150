.class Lcom/google/android/material/datepicker/MaterialDatePicker$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .registers 2

    .line 438
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 442
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    # getter for: Lcom/google/android/material/datepicker/MaterialDatePicker;->confirmButton:Landroid/widget/Button;
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$5;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;

    const/4 p0, 0x0

    throw p0
.end method
