.class Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 3

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_11

    .line 88
    iget-boolean p2, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    if-eqz p2, :cond_11

    const/4 p2, 0x0

    .line 89
    iput-boolean p2, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->this$0:Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;->-$$Nest$msaveScrollPosition(Lcom/transsion/camera/app/common/ui/helper/ScrollHelper;Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_11
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 4

    if-nez p2, :cond_6

    if-eqz p3, :cond_5

    goto :goto_6

    :cond_5
    return-void

    :cond_6
    :goto_6
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/helper/ScrollHelper$1;->mScrolled:Z

    return-void
.end method
