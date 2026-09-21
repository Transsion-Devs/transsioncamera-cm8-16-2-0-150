.class Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStartDragging:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDoubleTap(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDoubleTap(FF)Z

    move-result p0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$minTouchRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;FF)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mprocessDrag(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/MotionEvent;)V

    return v0

    .line 118
    :cond_19
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 132
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    if-eqz v0, :cond_b

    .line 133
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mprocessDrag(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 136
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onDragMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    .line 0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onGestureTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onGestureTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onLongPress(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .line 123
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    if-eqz v0, :cond_b

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mprocessDrag(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 127
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onSingleTapConfirmed(FF)Z
    .registers 3

    .line 0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapConfirmed(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .registers 4

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {v0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$minTouchRect(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;FF)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$fgetmTouchView(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;)Landroid/view/View;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$monClick(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    .line 156
    :cond_16
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onSingleTapUp(FF)Z

    move-result p0

    return p0
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 141
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->mStartDragging:Z

    .line 143
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI$2;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;->-$$Nest$mprocessDrag(Lcom/transsion/camera/feature/mode/aiartmuseum/ui/PreviewTouchUI;Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    .line 146
    :cond_e
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
