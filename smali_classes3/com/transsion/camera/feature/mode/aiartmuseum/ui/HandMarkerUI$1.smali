.class Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 47
    invoke-static {}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelativePreviewRectChanged relativeRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->-$$Nest$fgetmHandMarkerView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->-$$Nest$fgetmHandMarkerView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI$1;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;->-$$Nest$fgetmHandMarkerView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/HandMarkerUI;)Lcom/transsion/camera/feature/mode/aiartmuseum/ui/widget/HandMarkerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_49
    return-void
.end method
