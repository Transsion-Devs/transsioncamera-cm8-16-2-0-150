.class public Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

.field private final mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

.field private mEnable:Z

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

.field private mPreSelectedTabIndex:I

.field private mSelectedTabIndex:I

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private final mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VchhDu5gEWj-d5Gc8Fsage5jGxo(Landroid/widget/TextView;Z)V
    .registers 2

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnable(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mEnable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnClickListener(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mOnItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreSelectedTabIndex(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mPreSelectedTabIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViews(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mViews:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetItemOutView(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;I)Landroid/view/View;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getItemOutView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTabCountInLayout(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)I
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getTabCountInLayout()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_Indicator"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mViews:Ljava/util/List;

    const/4 p1, -0x1

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    .line 31
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mPreSelectedTabIndex:I

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mEnable:Z

    .line 149
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    .line 201
    new-instance p1, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$2;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    return-void
.end method

.method private getItemOutView(I)Landroid/view/View;
    .registers 2

    .line 255
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getTabCountInLayout()I
    .registers 1

    .line 259
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 220
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 227
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getCount()I

    move-result p0

    return p0
.end method

.method public getCurrentItem()I
    .registers 1

    .line 146
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    return p0
.end method

.method public getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 4

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    if-ltz p1, :cond_1d

    .line 246
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    goto :goto_1d

    .line 250
    :cond_11
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getItemOutView(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method protected measureChildren(II)V
    .registers 3

    .line 232
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->measureChildren(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 49
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .line 79
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method

.method public registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
    .registers 3

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 67
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    return-void

    .line 63
    :cond_b
    :goto_b
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerDataSetObserver, but input parameter is wrong."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    .line 57
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 6

    .line 97
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4a

    :cond_7
    if-gez p1, :cond_b

    const/4 p1, 0x0

    goto :goto_10

    :cond_b
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_10

    move p1, v0

    .line 106
    :cond_10
    :goto_10
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    if-eq v0, p1, :cond_4a

    .line 107
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCurrentItem]: , mSelectedTabIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", anim: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mPreSelectedTabIndex:I

    .line 110
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    .line 111
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeIndicatorIndex(I)V

    .line 112
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->updateTabSelectState()V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mEnable:Z

    return-void
.end method

.method public setOnItemSelectListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mOnItemSelectedListener:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-void
.end method

.method public unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
    .registers 2

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    if-eqz p1, :cond_9

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    :cond_9
    return-void
.end method

.method public updateTabSelectState()V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    if-nez v0, :cond_5

    goto :goto_53

    :cond_5
    const/4 v0, 0x0

    move v1, v0

    .line 121
    :goto_7
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mAdapter:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 122
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getItemView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_50

    .line 129
    :cond_16
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_23

    .line 130
    sget v2, Lcom/transsion/camera/feature/vlog/R$id;->freeshot_title:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_25

    .line 132
    :cond_23
    check-cast v2, Landroid/widget/TextView;

    .line 134
    :goto_25
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    if-ne v3, v1, :cond_34

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_category_name_text_selected_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_3e

    .line 136
    :cond_34
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsion/camera/feature/vlog/R$color;->vlog_template_category_name_text_default_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 134
    :goto_3e
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    iget v3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->mSelectedTabIndex:I

    if-ne v3, v1, :cond_47

    const/4 v3, 0x1

    goto :goto_48

    :cond_47
    move v3, v0

    .line 138
    :goto_48
    new-instance v4, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_53
    :goto_53
    return-void
.end method
