.class public Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

.field private mEnable:Z

.field private mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

.field private mItemSelectListenerProxy:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;

.field private mOnScrollPosition:I

.field private mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private mTabSelector:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$Swicmch21I9yai9wz1aPI-TSR-8(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->lambda$animateToTab$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmStoreMonitor(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTabSelector(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$manimateToTab(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->animateToTab(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_ScrollView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 22
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mOnScrollPosition:I

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mEnable:Z

    .line 102
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$1;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    .line 35
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private animateToTab(I)V
    .registers 3

    if-ltz p1, :cond_24

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    goto :goto_24

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_1a

    .line 159
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 161
    :cond_1a
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    .line 166
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_24
    :goto_24
    return-void
.end method

.method private synthetic lambda$animateToTab$0(Landroid/view/View;)V
    .registers 4

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->scrollTo(II)V

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 232
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 202
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCurrentItem()I
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCurrentItem()I

    move-result p0

    return p0
.end method

.method public getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getItemView(I)Landroid/view/View;
    .registers 2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getItemView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 5

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    .line 40
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 43
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;-><init>(Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView-IA;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mItemSelectListenerProxy:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setOnItemSelectListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 115
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    .line 123
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_a
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 207
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 139
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    .line 140
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mOnScrollPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_28

    .line 141
    iget-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p4, p1

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p3, p4

    if-ltz p3, :cond_28

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p3, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 146
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mOnScrollPosition:I

    :cond_28
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCount()I

    move-result p1

    if-lez p1, :cond_14

    .line 133
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCurrentItem()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->animateToTab(I)V

    :cond_14
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mEnable:Z

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 197
    :cond_6
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
    .registers 3

    if-eqz p1, :cond_b

    if-nez p2, :cond_5

    goto :goto_b

    .line 61
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    return-void

    .line 57
    :cond_b
    :goto_b
    sget-object p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "registerDataSetObserver, but input parameter is wrong."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setAdapter(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;)V

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->registerDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;->onChange()V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 7

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->getCount()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    if-gez p1, :cond_e

    move p1, v1

    goto :goto_13

    :cond_e
    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_13

    move p1, v0

    :cond_13
    :goto_13
    const/4 v0, -0x1

    .line 180
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mOnScrollPosition:I

    if-eqz p2, :cond_1c

    .line 182
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->animateToTab(I)V

    goto :goto_37

    .line 184
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 186
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->scrollTo(II)V

    .line 187
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mOnScrollPosition:I

    .line 189
    :goto_37
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setCurrentItem(IZ)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 2

    .line 221
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mEnable:Z

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setEnable(Z)V

    return-void
.end method

.method public setOnItemSelectListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mItemSelectListenerProxy:Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView$ItemSelectListenerProxy;->setOnItemSelectedListener(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$OnItemSelectedListener;)V

    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    return-void
.end method

.method public setTextColor()V
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mIndicatorViewLayout:Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/IndicatorViewLayout;->updateTabSelectState()V

    return-void
.end method

.method public unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V
    .registers 2

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 67
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->getIndicatorAdapter()Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/TemplateIndicatorScrollView;->mDataSetObserver:Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$IndicatorAdapter;->unRegisterDataSetObserver(Lcom/transsion/camera/feature/mode/vlog/widget/ITemplateIndicator$DataSetObserver;)V

    :cond_f
    return-void
.end method
