.class Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->playVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)V
    .registers 2

    .line 793
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmSelectFrameView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_39

    .line 797
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmSelectFrameView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVlogMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getSourceStartTime()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmVlogMediaItem(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/vlog/bean/VlogMediaItem;->getOriginDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;->moveTo(F)V

    .line 798
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI$2;->this$0:Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;->-$$Nest$fgetmSelectFrameView(Lcom/transsion/camera/feature/mode/vlog/ui/common/SegmentEditUI;)Lcom/transsion/camera/feature/mode/vlog/widget/SingleSelectFrameView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_39
    return-void
.end method
