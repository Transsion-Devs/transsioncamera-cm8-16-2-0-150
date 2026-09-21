.class Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fputmCurrentPage(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;I)V

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$1;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmDetailHorizontalItemBar(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/DetailHorizontalItemBar;->updateSelectedItem(IZ)V

    return-void
.end method
