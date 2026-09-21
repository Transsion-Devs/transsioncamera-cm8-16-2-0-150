.class public Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;,
        Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;
    }
.end annotation


# instance fields
.field dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mEndYear:I

.field private mFormat:Ljava/lang/String;

.field private mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

.field private mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

.field private mStartYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;-><init>(Landroid/content/Context;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;-><init>(Landroid/content/Context;ZIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIII)V
    .registers 15

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 40
    invoke-direct/range {v0 .. v7}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;-><init>(Landroid/content/Context;ZIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "yyyy-MM-dd HH:mm"

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 31
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .registers 6

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "yyyy-MM-dd HH:mm"

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 80
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    .line 83
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 84
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIII)V
    .registers 7

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "yyyy-MM-dd HH:mm"

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 63
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 65
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x1

    .line 66
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 67
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 68
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZIIIII)V
    .registers 9

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "yyyy-MM-dd HH:mm"

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    .line 180
    new-instance v0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$1;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 44
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x1

    .line 47
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 48
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 49
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 50
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p6}, Ljava/util/Calendar;->set(II)V

    .line 51
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Ljava/util/Calendar;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->onChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method private getTitle()Ljava/lang/String;
    .registers 5

    .line 236
    const-string v0, "yyyy-MM-dd"

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x16

    goto :goto_1b

    .line 238
    :cond_d
    const-string v0, "HH:mm"

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1b

    :cond_19
    const/16 v0, 0x17

    .line 243
    :goto_1b
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 245
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 243
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onChanged()V
    .registers 11

    .line 221
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 222
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x1

    .line 223
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    .line 224
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x5

    .line 225
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    .line 226
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    .line 227
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    .line 228
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 222
    invoke-interface/range {v1 .. v9}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;->onChange(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;IIIIII)V

    .line 229
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->updateTitle()V

    :cond_41
    return-void
.end method

.method private setPickerView()V
    .registers 5

    .line 166
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_a

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 169
    :cond_a
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_time_layout:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 171
    sget v1, Lcom/transsion/widgetslib/R$id;->datePicker:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    .line 172
    iget v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mStartYear:I

    if-nez v2, :cond_25

    iget v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    if-eqz v3, :cond_2a

    .line 173
    :cond_25
    iget v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setYearDuration(II)V

    .line 175
    :cond_2a
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->dateOnchangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;)V

    .line 177
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-void
.end method

.method private updateTitle()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_b

    .line 253
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .registers 2

    .line 158
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setPickerView()V

    .line 159
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 160
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setTitleSingleLine()V

    .line 161
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->updateTitle()V

    .line 162
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public disMiss()V
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 141
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_f
    return-void
.end method

.method public getDateTimePicker()Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    return-object p0
.end method

.method public isShowing()Z
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 281
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_7

    .line 282
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_7
    return-void
.end method

.method public setBlackMode()V
    .registers 2

    .line 287
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setBlackMode()V

    .line 288
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setBlackMode()V

    return-void
.end method

.method public setCancelable(Z)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCancelable(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setCanceledOnTouchOutside(Z)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setDimAmount(F)V
    .registers 2

    .line 292
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz p0, :cond_7

    .line 293
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->setDimAmount(F)V

    :cond_7
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mFormat:Ljava/lang/String;

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnChangeListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnChangeListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnChangeListener;

    return-object p0
.end method

.method public setOnDateTimeSetListener(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 4

    .line 202
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mOnDateTimeSetListener:Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$OnDateTimeSetListener;

    .line 203
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    sget v0, Lcom/transsion/widgetslib/R$string;->os_preference_dialog_positive_string:I

    new-instance v1, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog$2;-><init>(Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(I)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTopTitle(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTopTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    return-object p0
.end method

.method public setYearDuration(II)V
    .registers 3

    .line 276
    iput p1, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mStartYear:I

    .line 277
    iput p2, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mEndYear:I

    return-void
.end method

.method public updateDate(III)V
    .registers 4

    .line 264
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz p0, :cond_7

    .line 265
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDate(III)V

    :cond_7
    return-void
.end method

.method public updateDateTime(IIIII)V
    .registers 6

    .line 270
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz p0, :cond_7

    .line 271
    invoke-virtual/range {p0 .. p5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDateTime(IIIII)V

    :cond_7
    return-void
.end method

.method public updateTime(II)V
    .registers 3

    .line 258
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/OSDateTimePickerDialog;->mDateTimePicker:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz p0, :cond_7

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateTime(II)V

    :cond_7
    return-void
.end method
