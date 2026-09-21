.class Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$pagerGuide:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 344
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$pagerGuide:Landroid/view/View;

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$child:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$pagerGuide:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 348
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 349
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$child:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$id;->motion_capture_help_content_1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_32

    .line 351
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    iget-object v1, v1, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->access$000(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/mode/motioncapture/R$drawable;->ic_flash_snap_dark:I

    invoke-static {v1, v0, v2}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    .line 353
    :cond_32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$child:Landroid/view/View;

    sget v0, Lcom/transsion/camera/feature/mode/motioncapture/R$id;->mode_title:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-void

    .line 358
    :cond_3d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->val$child:Landroid/view/View;

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$id;->motion_capture_help_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_6e

    .line 360
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 361
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->access$100(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$drawable;->ic_flash_snap_dark:I

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void

    .line 363
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;->this$1:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->access$200(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/transsion/camera/feature/mode/motioncapture/R$drawable;->ic_auto_capture_help:I

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/UIUtils;->replaceTextViewWithIcon(Landroid/content/Context;Landroid/widget/TextView;I)V

    :cond_6e
    return-void
.end method
