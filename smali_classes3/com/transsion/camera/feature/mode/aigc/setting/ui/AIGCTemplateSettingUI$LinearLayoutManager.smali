.class Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinearLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager$HorizontalSmoothScroller;
    }
.end annotation


# instance fields
.field private mScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    .line 236
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;->mScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 2

    .line 245
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;->mScrollEnabled:Z

    if-eqz v0, :cond_c

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollHorizontally()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public setScrollEnabled(Z)V
    .registers 2

    .line 240
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;->mScrollEnabled:Z

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    .line 250
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager$HorizontalSmoothScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager$HorizontalSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 251
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 252
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
