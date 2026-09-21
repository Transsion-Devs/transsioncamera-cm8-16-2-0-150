.class Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$IDetailItemClickListener;


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

    .line 139
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$2;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder$2;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;->-$$Nest$fgetmViewPager(Lcom/transsion/camera/feature/imageryguide/viewHolder/detail/DetailGuideHorizontalHolder;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method
