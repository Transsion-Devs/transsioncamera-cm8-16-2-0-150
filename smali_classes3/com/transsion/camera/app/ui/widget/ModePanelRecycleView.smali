.class public Lcom/transsion/camera/app/ui/widget/ModePanelRecycleView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# instance fields
.field private mMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/ModePanelRecycleView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 28
    sget-object v0, Lcom/transsion/camera/R$styleable;->ModePanelRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 29
    sget p2, Lcom/transsion/camera/R$styleable;->ModePanelRecyclerView_maxHeight:I

    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ModePanelRecycleView;->mMaxHeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/widget/ModePanelRecycleView;->mMaxHeight:I

    .line 30
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 4

    .line 35
    iget v0, p0, Lcom/transsion/camera/app/ui/widget/ModePanelRecycleView;->mMaxHeight:I

    if-lez v0, :cond_a

    const/high16 p2, -0x80000000

    .line 36
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 38
    :cond_a
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method
