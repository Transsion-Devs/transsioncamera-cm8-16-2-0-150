.class public Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;
    }
.end annotation


# static fields
.field public static final FORMAT_H_M:Ljava/lang/String; = "HH:mm"

.field public static final FORMAT_M_D:Ljava/lang/String; = "MM-dd"

.field public static final FORMAT_M_D_H_M:Ljava/lang/String; = "MM-dd HH:mm"

.field public static final FORMAT_Y_M_D:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final FORMAT_Y_M_D_H_M:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final OS_DIALOG_STANDARD_WIDTH_DP:I = 0x148

.field private static final VIBRATOR_VIB_TI:I = 0x78a2764f


# instance fields
.field private final DEFAULT_VISIBLE_ITEMS:I

.field private END_YEAR:I

.field private START_YEAR:I

.field private TAG:Ljava/lang/String;

.field private mAmPmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mFormat:Ljava/lang/String;

.field private mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mIs24Format:Z

.field private mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field public mMonthList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

.field private mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

.field private mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

.field private mRequireRelayout:Z

.field private mSoundEffect:Z

.field private mVibrateRunnable:Ljava/lang/Runnable;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;


# direct methods
.method public static synthetic $r8$lambda$ZlSoDwq_hdhLU9Ho1HWIp7wUYo4(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 2

    .line 104
    sget v0, Lcom/transsion/widgetslib/R$id;->os_wheels_parent:I

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public static synthetic $r8$lambda$v2UyNXndc6OVRHZ6451b3lKKAqo(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 2

    .line 97
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    :cond_9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    const/16 v0, 0x76c

    .line 42
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    const/16 v0, 0x834

    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    const/4 v0, 0x5

    .line 50
    iput v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->DEFAULT_VISIBLE_ITEMS:I

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    .line 956
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    .line 70
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 40
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    const/16 p2, 0x76c

    .line 42
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    const/16 p2, 0x834

    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    const/4 p2, 0x5

    .line 50
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->DEFAULT_VISIBLE_ITEMS:I

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->TAG:Ljava/lang/String;

    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    .line 956
    new-instance p2, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$8;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    .line 75
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onYearChange(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->maybeVibrate()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onVibrate()V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onMonthChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->onDaysChange(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Ljava/util/Calendar;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;IZ)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMonthDayData(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)Z
    .registers 1

    .line 35
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    return p0
.end method

.method private change()V
    .registers 3

    .line 634
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    if-eqz v0, :cond_9

    .line 635
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-interface {v0, p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;->onChange(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;Ljava/util/Calendar;)V

    :cond_9
    return-void
.end method

.method private dp2px(F)I
    .registers 3

    .line 838
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    .line 839
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 838
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private dp2px(I)I
    .registers 3

    int-to-float p1, p1

    .line 833
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 833
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getAmPmString(Z)Ljava/lang/String;
    .registers 3

    .line 508
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    if-eqz p1, :cond_9

    const/16 p1, 0xa

    goto :goto_b

    :cond_9
    const/16 p1, 0xe

    :goto_b
    const/16 v0, 0xb

    .line 509
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 510
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 514
    new-instance p1, Landroid/icu/text/SimpleDateFormat;

    const-string v0, "aa"

    invoke-direct {p1, v0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p1, p0}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRatioValue(I)I
    .registers 2

    int-to-float p1, p1

    .line 734
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->reCalculateRatio()F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initAndSetMargins()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_7e

    goto :goto_44

    :sswitch_e
    const-string v1, "MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_44

    :cond_17
    const/4 v2, 0x4

    goto :goto_44

    :sswitch_19
    const-string v1, "HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_44

    :cond_22
    const/4 v2, 0x3

    goto :goto_44

    :sswitch_24
    const-string v1, "yyyy-MM-dd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_44

    :cond_2d
    const/4 v2, 0x2

    goto :goto_44

    :sswitch_2f
    const-string v1, "MM-dd HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_44

    :cond_38
    const/4 v2, 0x1

    goto :goto_44

    :sswitch_3a
    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    :goto_44
    packed-switch v2, :pswitch_data_94

    goto :goto_79

    .line 135
    :pswitch_48
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 136
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    goto :goto_79

    .line 139
    :pswitch_4f
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 140
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    goto :goto_79

    .line 125
    :pswitch_56
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initYearWheel()V

    .line 126
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 127
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    goto :goto_79

    .line 130
    :pswitch_60
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthDayWheel()V

    .line 131
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 132
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    goto :goto_79

    .line 118
    :pswitch_6a
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initYearWheel()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthWheel()V

    .line 120
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initDayWheel()V

    .line 121
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initHourWheel()V

    .line 122
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMinuteWheel()V

    .line 146
    :goto_79
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    return-void

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x45dc2bc6 -> :sswitch_3a
        -0x347fb3b9 -> :sswitch_2f
        -0x985fe00 -> :sswitch_24
        0x4183e5a -> :sswitch_19
        0x460c7cd -> :sswitch_e
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_60
        :pswitch_56
        :pswitch_4f
        :pswitch_48
    .end packed-switch
.end method

.method private initDayWheel()V
    .registers 7

    .line 237
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 238
    sget v2, Lcom/transsion/widgetslib/R$id;->dayWheel:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 239
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    move v4, v3

    .line 242
    :goto_1c
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_2f

    .line 243
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 245
    :cond_2f
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 246
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 247
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 248
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 249
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$3;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 295
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initHourWheel()V
    .registers 8

    .line 421
    sget v0, Lcom/transsion/widgetslib/R$id;->hourWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x0

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 423
    sget v0, Lcom/transsion/widgetslib/R$id;->formatWheel:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    .line 424
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    .line 425
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setHourWheel(Z)V

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-boolean v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->set24HoursFormat(Z)V

    .line 427
    iget-boolean v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    const/16 v3, 0xb

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_42

    :cond_3a
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 428
    :goto_42
    iget-boolean v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v4, :cond_64

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_4b
    const/16 v4, 0x18

    if-ge v1, v4, :cond_59

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 433
    :cond_59
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 434
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    goto :goto_cc

    .line 436
    :cond_64
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 437
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getAmPmString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getAmPmString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_81
    const/16 v6, 0xd

    if-ge v5, v6, :cond_8f

    .line 442
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_81

    .line 444
    :cond_8f
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 445
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    add-int/2addr v0, v3

    rem-int/lit8 v0, v0, 0xc

    invoke-virtual {v4, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 447
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 448
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 449
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 450
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v3, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 451
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 452
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setAmPmWheel(Z)V

    .line 453
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$5;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$5;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 473
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    .line 475
    :goto_cc
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 476
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 477
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$6;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 504
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMinuteWheel()V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 534
    sget v1, Lcom/transsion/widgetslib/R$id;->minWheel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    .line 535
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1b
    const/16 v3, 0x3c

    if-ge v2, v3, :cond_29

    .line 538
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 540
    :cond_29
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMinuteWheel(Z)V

    .line 541
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 542
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 543
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 544
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 545
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$7;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 565
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMonthDayWheel()V
    .registers 7

    .line 343
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthList()V

    .line 344
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 345
    sget v2, Lcom/transsion/widgetslib/R$id;->monthDayWheel:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 346
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setYearDays(Ljava/util/Calendar;Z)V

    .line 348
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setMonthList(Ljava/util/List;)V

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 351
    :goto_2d
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    add-int/2addr v5, v4

    if-ge v3, v5, :cond_40

    .line 352
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 354
    :cond_40
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 355
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 356
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 357
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    sub-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 358
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$4;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 392
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initMonthList()V
    .registers 4

    .line 587
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 588
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jan:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->feb:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->mar:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->apr:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->may:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jun:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->jul:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->aug:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->sep:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->oct:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v2, Lcom/transsion/widgetslib/R$string;->nov:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    sget v1, Lcom/transsion/widgetslib/R$string;->dec:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initMonthWheel()V
    .registers 4

    .line 195
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 196
    sget v1, Lcom/transsion/widgetslib/R$id;->monthWheel:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x0

    .line 197
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 198
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initMonthList()V

    .line 200
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 201
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 202
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 203
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 204
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$2;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 224
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private initYearWheel()V
    .registers 7

    .line 150
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 151
    sget v2, Lcom/transsion/widgetslib/R$id;->yearWheel:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iput-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    :goto_1c
    iget v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v1

    if-ge v4, v5, :cond_2f

    .line 156
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 158
    :cond_2f
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v4, v2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 159
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setVisibleItems(I)V

    .line 160
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setCyclic(Z)V

    .line 161
    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setNeedMaxPullLimit(Z)V

    .line 162
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    if-le v0, v2, :cond_4c

    sub-int v3, v0, v2

    :cond_4c
    invoke-virtual {v1, v3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSelectedItemPosition(I)V

    .line 163
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 183
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method

.method private maybeVibrate()V
    .registers 4

    .line 964
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_12

    return-void

    .line 965
    :cond_12
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 966
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 967
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_OPT_SUPPORT:Z

    if-eqz v0, :cond_47

    .line 968
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_AFTER_1501:Z

    if-eqz v0, :cond_39

    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_OPT_0012_IR:Z

    if-eqz v0, :cond_39

    .line 969
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/widgetslib/util/VibrateUtils;->vibrateV2(Landroid/content/Context;)V

    return-void

    .line 971
    :cond_39
    sget-boolean v0, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_O:Z

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz v0, :cond_53

    .line 972
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    .line 976
    :cond_47
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_54

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_53
    return-void

    :array_54
    .array-data 8
        0x0
        0x28
    .end array-data
.end method

.method private onDaysChange(I)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 308
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method private onMonthChange(I)V
    .registers 7

    .line 312
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 313
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 314
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x2

    .line 315
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 317
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 318
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ge v0, v4, :cond_27

    .line 321
    iget-object v4, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 324
    :cond_27
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 325
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDaysWheel()V

    .line 326
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    .line 327
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->getSelectedItemPosition()I

    move-result p0

    add-int/2addr p0, v2

    invoke-virtual {p1, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private onVibrate()V
    .registers 4

    .line 950
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 951
    sget-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_SUPPORT:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 952
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrateRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    return-void
.end method

.method private onYearChange(I)V
    .registers 9

    .line 331
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 332
    iget-object v3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 333
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, p1}, Ljava/util/Calendar;->set(II)V

    if-ne v2, v1, :cond_33

    const/16 v2, 0x1d

    if-ne v3, v2, :cond_33

    .line 334
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v2, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result p1

    if-nez p1, :cond_33

    .line 335
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 336
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0x1c

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 338
    :cond_33
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateDaysWheel()V

    .line 339
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method private reCalculateRatio()F
    .registers 2

    .line 738
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-static {v0, p0}, Lcom/transsion/widgetslib/util/Utils;->px2dp(Landroid/content/Context;I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x43a40000    # 328.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private refreshUI()V
    .registers 2

    .line 926
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initAndSetMargins()V

    .line 927
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    if-eqz v0, :cond_a

    .line 928
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    :cond_a
    return-void
.end method

.method private releaseDayWheel()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 300
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDayChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 302
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_e
    return-void
.end method

.method private releaseFormatWheel()V
    .registers 3

    .line 577
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_15

    .line 578
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mAmPmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnFormatChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 581
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_15
    return-void
.end method

.method private releaseHourWheel()V
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 525
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnHourChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 527
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_e
    return-void
.end method

.method private releaseMinuteWheel()V
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 570
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMinuteChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 572
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_e
    return-void
.end method

.method private releaseMonthDayWheel()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 397
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 398
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 399
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_e
    return-void
.end method

.method private releaseMonthWheel()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_13

    .line 229
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 231
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 232
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_13
    return-void
.end method

.method private releaseYearWheel()V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 188
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnYearChangedListener:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    .line 190
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    :cond_e
    return-void
.end method

.method private setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V
    .registers 3

    if-eqz p1, :cond_5

    .line 870
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setWheelBackgroundColor(I)V

    :cond_5
    return-void
.end method

.method private setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V
    .registers 4

    if-eqz p1, :cond_8

    .line 876
    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextSecondColor(I)V

    .line 877
    invoke-virtual {p1, p3}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setTextSelectColor(I)V

    :cond_8
    return-void
.end method

.method private updateDaysWheel()V
    .registers 6

    .line 608
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_25

    .line 609
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    move v3, v2

    :goto_12
    add-int/lit8 v4, v0, 0x1

    if-ge v3, v4, :cond_20

    .line 612
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 614
    :cond_20
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    :cond_25
    return-void
.end method

.method private updateMonthDayData(IZ)V
    .registers 6

    .line 404
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 405
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 406
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz p2, :cond_19

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p2

    goto :goto_1d

    .line 407
    :cond_19
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result p2

    .line 406
    :goto_1d
    invoke-virtual {p1, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 409
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move p2, v2

    .line 410
    :goto_26
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    add-int/2addr v0, v2

    if-ge p2, v0, :cond_39

    .line 411
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_26

    .line 413
    :cond_39
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setData(Ljava/util/List;)V

    .line 414
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 415
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    .line 416
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->safeResetScrollOffsetY(I)V

    .line 417
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnMonthDayChangedLister:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;

    invoke-virtual {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setOnWheelChangedListener(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$OnWheelChangedListener;)V

    return-void
.end method


# virtual methods
.method public abortFinishScroll()V
    .registers 2

    .line 1038
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_7

    .line 1039
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1041
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 1042
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1044
    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_15

    .line 1045
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1047
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1c

    .line 1048
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1050
    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_23

    .line 1051
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1053
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2a

    .line 1054
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    .line 1056
    :cond_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_31

    .line 1057
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->abortFinishScroll()V

    :cond_31
    return-void
.end method

.method public getDayWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getEndYear()I
    .registers 1

    .line 946
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    return p0
.end method

.method public getFormatWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1086
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getHourWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1078
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMinuteWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1082
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMonthDayWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1074
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getMonthWheel()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1066
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public getStartYear()I
    .registers 1

    .line 942
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    return p0
.end method

.method public getYearWheelView()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
    .registers 1

    .line 1062
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    return-object p0
.end method

.method public init(Ljava/lang/String;)V
    .registers 4

    .line 84
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_15

    .line 86
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_layout_rtl:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_20

    .line 88
    :cond_15
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_picker_date_layout:I

    invoke-virtual {p1, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    :goto_20
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->initAndSetMargins()V

    .line 92
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrator:Landroid/os/Vibrator;

    .line 93
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_OPT_SUPPORT:Z

    if-eqz p1, :cond_41

    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_O:Z

    if-eqz p1, :cond_41

    const-wide/32 v0, 0x78a2764f    # 9.999459027E-315

    const/4 p1, -0x1

    .line 94
    invoke-static {v0, v1, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 96
    :cond_41
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 103
    new-instance p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;)V

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public init(Ljava/util/Calendar;Ljava/lang/String;)V
    .registers 3

    .line 79
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    .line 80
    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->init(Ljava/lang/String;)V

    return-void
.end method

.method public is24Format()Z
    .registers 1

    .line 645
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    return p0
.end method

.method public isRequireRelayout()Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    return p0
.end method

.method public isSoundEffect()Z
    .registers 1

    .line 626
    iget-boolean p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mSoundEffect:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 983
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 984
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    .line 620
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 621
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->updateMargins()V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 604
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public release()V
    .registers 1

    .line 916
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseYearWheel()V

    .line 917
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMonthWheel()V

    .line 918
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseDayWheel()V

    .line 919
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMonthDayWheel()V

    .line 920
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseHourWheel()V

    .line 921
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseMinuteWheel()V

    .line 922
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->releaseFormatWheel()V

    return-void
.end method

.method public setBlackMode()V
    .registers 2

    .line 1090
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_7

    .line 1091
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1093
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 1094
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1096
    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_15

    .line 1097
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1099
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1c

    .line 1100
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1102
    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_23

    .line 1103
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1105
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2a

    .line 1106
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    .line 1108
    :cond_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_31

    .line 1109
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setBlackMode()V

    :cond_31
    return-void
.end method

.method public setMarginStart(IIIIIII)V
    .registers 9

    .line 743
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_22

    if-eqz p2, :cond_22

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    if-eq v0, p2, :cond_22

    .line 744
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 745
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 746
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 749
    :cond_22
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_44

    if-eqz p3, :cond_44

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p3, :cond_44

    .line 750
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 751
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 752
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 755
    :cond_44
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_66

    if-eqz p4, :cond_66

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p4, :cond_66

    .line 756
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 757
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 758
    iget-object p3, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    :cond_66
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p2, :cond_88

    if-eqz p1, :cond_88

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p2

    if-eq p2, p1, :cond_88

    .line 762
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 763
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 764
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    :cond_88
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_aa

    if-eqz p5, :cond_aa

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p5, :cond_aa

    .line 768
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 769
    invoke-virtual {p1, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 770
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_aa
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_cc

    if-eqz p6, :cond_cc

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p6, :cond_cc

    .line 774
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 775
    invoke-virtual {p1, p6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 776
    iget-object p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    :cond_cc
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p1, :cond_ee

    if-eqz p7, :cond_ee

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    if-eq p1, p7, :cond_ee

    .line 780
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 781
    invoke-virtual {p1, p7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 782
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ee
    return-void
.end method

.method public setOnDateChangeListener(Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;)V
    .registers 2

    .line 640
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mOnDateTimeChangeListener:Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker$OnDateTimeChangeListener;

    .line 641
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->change()V

    return-void
.end method

.method public setRequireRelayout(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mRequireRelayout:Z

    return-void
.end method

.method public setSoundEffect(Z)V
    .registers 3

    .line 1013
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mSoundEffect:Z

    .line 1014
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_9

    .line 1015
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1017
    :cond_9
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_10

    .line 1018
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1020
    :cond_10
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_17

    .line 1021
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1023
    :cond_17
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1e

    .line 1024
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1026
    :cond_1e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_25

    .line 1027
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1029
    :cond_25
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2c

    .line 1030
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    .line 1032
    :cond_2c
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_33

    .line 1033
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffect(Z)V

    :cond_33
    return-void
.end method

.method public setSoundEffectResource(I)V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 989
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_7

    .line 990
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 992
    :cond_7
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_e

    .line 993
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 995
    :cond_e
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_15

    .line 996
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 998
    :cond_15
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_1c

    .line 999
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 1001
    :cond_1c
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_23

    .line 1002
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 1004
    :cond_23
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v0, :cond_2a

    .line 1005
    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    .line 1007
    :cond_2a
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz p0, :cond_31

    .line 1008
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;->setSoundEffectResource(I)V

    :cond_31
    return-void
.end method

.method public setWheelBackgroundColor(I)V
    .registers 3

    .line 849
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 850
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 851
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 852
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 853
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 854
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    .line 855
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackground(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;I)V

    return-void
.end method

.method public setWheelBackgroundColorRes(I)V
    .registers 3

    .line 843
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 844
    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelBackgroundColor(I)V

    :cond_b
    return-void
.end method

.method public setWheelTextColor(II)V
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 860
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 861
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 862
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 863
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 864
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    .line 865
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelTextColor(Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;II)V

    return-void
.end method

.method public setWheelWidth()V
    .registers 4

    .line 788
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 789
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_2d

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    if-eq v1, v2, :cond_2d

    .line 790
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 791
    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 792
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 794
    :cond_2d
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_64

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_64

    .line 796
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 798
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    :cond_64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month_day:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 801
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_9b

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_9b

    .line 802
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_month_day:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 804
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMonthDayWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    :cond_9b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_year:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 807
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_d2

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_d2

    .line 808
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 809
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_year:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 810
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mYearWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 812
    :cond_d2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 813
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_109

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_109

    .line 814
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 815
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_hour:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 816
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mHourWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    :cond_109
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_minute:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 819
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_140

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_140

    .line 820
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 821
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_minute:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 822
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mMinuteWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 824
    :cond_140
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 825
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    if-eqz v1, :cond_177

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_177

    .line 826
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 827
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$dimen;->picker_wheel_width_format:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 828
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_177
    return-void
.end method

.method public setYearDuration(II)V
    .registers 3

    if-ge p2, p1, :cond_3

    return-void

    .line 936
    :cond_3
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->START_YEAR:I

    .line 937
    iput p2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->END_YEAR:I

    return-void
.end method

.method public updateDate(III)V
    .registers 6

    .line 892
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    .line 893
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 894
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 895
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 897
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 898
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_1a
    return-void
.end method

.method public updateDateTime(IIIII)V
    .registers 8

    .line 903
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    .line 904
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 905
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 906
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 907
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xb

    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 908
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 910
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 911
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_28
    return-void
.end method

.method public updateMargins()V
    .registers 12

    .line 650
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormat:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_17e

    goto :goto_2f

    :sswitch_f
    const-string v2, "HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_2f

    :cond_18
    const/4 v4, 0x2

    goto :goto_2f

    :sswitch_1a
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_2f

    :cond_23
    const/4 v4, 0x1

    goto :goto_2f

    :sswitch_25
    const-string v2, "MM-dd HH:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v3

    :goto_2f
    const/16 v1, 0x8

    packed-switch v4, :pswitch_data_18c

    move v1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    goto/16 :goto_14e

    .line 698
    :pswitch_3c
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v2

    const/high16 v4, 0x41a40000    # 20.5f

    const/high16 v5, 0x42810000    # 64.5f

    const/16 v6, 0x28

    const/high16 v7, 0x42b70000    # 91.5f

    const/16 v8, 0x41

    if-eqz v2, :cond_7e

    .line 699
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v2, :cond_65

    .line 700
    invoke-direct {p0, v8}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v2

    .line 701
    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 702
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_5d
    move v5, v2

    move v1, v3

    move v2, v1

    move v7, v2

    move v6, v4

    :goto_62
    move v4, v7

    goto/16 :goto_14e

    .line 704
    :cond_65
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 705
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v2

    .line 706
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 707
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_76
    move v5, v1

    move v6, v2

    move v1, v3

    move v2, v1

    move v7, v4

    move v4, v2

    goto/16 :goto_14e

    .line 710
    :cond_7e
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v2, :cond_90

    .line 711
    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v2

    .line 712
    invoke-direct {p0, v8}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v4

    .line 713
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5d

    .line 715
    :cond_90
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v1

    .line 716
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v2

    .line 717
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 718
    iget-object v5, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_76

    .line 655
    :pswitch_a2
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v1

    const v2, 0x4029999a    # 2.65f

    if-eqz v1, :cond_be

    .line 656
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v1

    .line 657
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v2

    const/16 v4, 0x32

    .line 658
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v4

    move v5, v3

    move v6, v5

    move v7, v6

    move v3, v4

    goto :goto_62

    :cond_be
    const/16 v1, 0x14

    .line 660
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    const/16 v4, 0x1f

    .line 661
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v4

    .line 662
    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v2

    move v5, v3

    move v6, v5

    move v7, v6

    move v3, v2

    move v2, v4

    goto :goto_62

    .line 666
    :pswitch_d4
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result v2

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x40200000    # 2.5f

    const/16 v6, 0x13

    const/16 v7, 0xb

    const v8, 0x40dccccd    # 6.9f

    const v9, 0x41d4cccd    # 26.6f

    const/16 v10, 0x27

    if-eqz v2, :cond_122

    .line 667
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v2, :cond_106

    .line 668
    invoke-direct {p0, v10}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v2

    .line 669
    invoke-direct {p0, v9}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 670
    invoke-direct {p0, v8}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v5

    .line 671
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_ff
    move v1, v3

    move v7, v1

    move v6, v5

    move v5, v4

    move v4, v2

    move v2, v7

    goto :goto_14e

    .line 673
    :cond_106
    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 674
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v2

    .line 675
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v5

    .line 676
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 677
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_11b
    move v7, v4

    move v6, v5

    move v4, v1

    move v5, v2

    move v1, v3

    move v2, v1

    goto :goto_14e

    .line 680
    :cond_122
    iget-boolean v2, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mIs24Format:Z

    if-eqz v2, :cond_138

    .line 681
    invoke-direct {p0, v10}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v2

    .line 682
    invoke-direct {p0, v8}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 683
    invoke-direct {p0, v9}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v5

    .line 684
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_ff

    .line 686
    :cond_138
    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v1

    .line 687
    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v2

    .line 688
    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(I)I

    move-result v5

    .line 689
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->dp2px(F)I

    move-result v4

    .line 690
    iget-object v6, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mFormatWheel:Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11b

    .line 725
    :goto_14e
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->isRequireRelayout()Z

    move-result v8

    if-eqz v8, :cond_178

    .line 726
    invoke-direct {p0, v1}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v1

    invoke-direct {p0, v2}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v3

    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v4

    invoke-direct {p0, v5}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v5

    invoke-direct {p0, v6}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v6

    invoke-direct {p0, v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->getRatioValue(I)I

    move-result v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setMarginStart(IIIIIII)V

    .line 727
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setWheelWidth()V

    return-void

    :cond_178
    move-object v0, p0

    .line 729
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->setMarginStart(IIIIIII)V

    return-void

    nop

    :sswitch_data_17e
    .sparse-switch
        -0x347fb3b9 -> :sswitch_25
        -0x985fe00 -> :sswitch_1a
        0x4183e5a -> :sswitch_f
    .end sparse-switch

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_a2
        :pswitch_3c
    .end packed-switch
.end method

.method public updateTime(II)V
    .registers 5

    .line 882
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    if-eqz v0, :cond_16

    const/16 v1, 0xb

    .line 883
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 884
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 886
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->release()V

    .line 887
    invoke-direct {p0}, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;->refreshUI()V

    :cond_16
    return-void
.end method
