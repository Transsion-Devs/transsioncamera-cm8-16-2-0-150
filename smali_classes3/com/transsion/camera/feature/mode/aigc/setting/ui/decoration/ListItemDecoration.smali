.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mEndPadding:I

.field private final mInterval:I

.field private final mStartPadding:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ListItemDecoration"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 33
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mStartPadding:I

    .line 34
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mInterval:I

    .line 35
    iput p3, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mEndPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 41
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-nez p4, :cond_e

    .line 43
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getItemOffsets adapter is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_e
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 49
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getItemOffsets layoutManager is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1c
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p4

    if-gtz p4, :cond_23

    return-void

    :cond_23
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_3d

    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 60
    iget p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mStartPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mEndPadding:I

    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 62
    :cond_35
    iget p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mStartPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mEndPadding:I

    invoke-virtual {p1, v2, p2, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 65
    :cond_3d
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_59

    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 69
    iget p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mStartPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mInterval:I

    invoke-virtual {p1, p2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 71
    :cond_51
    iget p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mStartPadding:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mInterval:I

    invoke-virtual {p1, v2, p2, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_59
    sub-int/2addr p4, v1

    if-ne p2, p4, :cond_6e

    .line 74
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_68

    .line 75
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mEndPadding:I

    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 77
    :cond_68
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mEndPadding:I

    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 80
    :cond_6e
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 81
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mInterval:I

    invoke-virtual {p1, v2, v2, p0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 83
    :cond_7a
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;->mInterval:I

    invoke-virtual {p1, v2, v2, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
