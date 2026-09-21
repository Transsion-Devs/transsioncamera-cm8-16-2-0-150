.class Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$1;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    .line 81
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder$1;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;->-$$Nest$fgetmPageIndicator(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/ModeHolder;)Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/GuidePageIndicator;->setSelectPosition(I)V

    return-void
.end method
