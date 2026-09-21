.class Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->findAndReplaceTextWithIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .line 341
    invoke-static {}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChildViewAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/camera/app/common/R$id;->guide_container:I

    if-ne p1, v0, :cond_3a

    .line 343
    sget p1, Lcom/transsion/camera/app/common/R$id;->pager_guide:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    new-instance v1, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1$1;-><init>(Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;Landroid/view/View;Landroid/view/View;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode$1;->this$0:Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3a
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 375
    invoke-static {}, Lcom/transsion/camera/feature/mode/motioncapture/MotionCaptureMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onChildViewRemoved"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
