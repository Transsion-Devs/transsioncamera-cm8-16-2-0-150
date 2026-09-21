.class public Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCheckDrawState:Z

.field private mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

.field private mCurrentTag:Ljava/lang/String;

.field private final mHorizontalMargin:I

.field private final mItemInterval:I

.field private mScreenFormType:I

.field private final mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

.field private final mTempDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_TemplateDecoration"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;",
            ">;",
            "Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 34
    const-string v0, "-1"

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCurrentTag:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_item_margin:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mHorizontalMargin:I

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_template_detail_item_interval:I

    .line 42
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mItemInterval:I

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mTempDetails:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    .line 45
    iput-boolean p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCheckDrawState:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 84
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_a

    return-void

    .line 90
    :cond_a
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    .line 91
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_22

    .line 94
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mScreenFormType:I

    if-eq p2, p3, :cond_1d

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mHorizontalMargin:I

    goto :goto_1e

    :cond_1d
    move p0, v0

    :goto_1e
    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_22
    sub-int/2addr p4, p3

    if-ne p2, p4, :cond_2d

    .line 96
    iget p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mItemInterval:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mHorizontalMargin:I

    invoke-virtual {p1, p2, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 98
    :cond_2d
    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mItemInterval:I

    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 62
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCheckDrawState:Z

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mTempDetails:Ljava/util/List;

    if-eqz p1, :cond_67

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_67

    .line 66
    :cond_f
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mTempDetails:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/vlog/bean/TempDetail;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCurrentTag:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_67

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

    if-eqz p2, :cond_67

    .line 71
    sget-object p2, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw, mCurrentTag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCurrentTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCurrentTag:Ljava/lang/String;

    .line 73
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mStoreMonitor:Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;

    if-eqz p2, :cond_5d

    .line 74
    invoke-interface {p2, p1}, Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;->storeTempDetailTag(Ljava/lang/String;)V

    .line 76
    :cond_5d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;->check(IZ)V

    :cond_67
    :goto_67
    return-void
.end method

.method public setCheckListener(Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCheckListener:Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration$CheckListener;

    return-void
.end method

.method public setCurrentTag(Ljava/lang/String;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mCurrentTag:Ljava/lang/String;

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/adapter/TemplateItemDecoration;->mScreenFormType:I

    return-void
.end method
