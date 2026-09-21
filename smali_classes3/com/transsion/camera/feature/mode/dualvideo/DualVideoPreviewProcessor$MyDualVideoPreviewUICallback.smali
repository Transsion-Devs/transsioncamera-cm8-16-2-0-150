.class Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI$DualVideoPreviewUICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDualVideoPreviewUICallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V
    .registers 2

    .line 1247
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method


# virtual methods
.method public OnDividerChanging(F)Z
    .registers 5

    .line 1330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_fd

    .line 1334
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    float-to-int p1, p1

    int-to-float v0, p1

    .line 1335
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    add-float/2addr v1, v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3c

    .line 1336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerUpEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    goto :goto_67

    .line 1337
    :cond_3c
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_59

    .line 1338
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDownEdgeOffset(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    goto :goto_67

    .line 1340
    :cond_59
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v0

    float-to-int v0, v0

    .line 1341
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {v1, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1344
    :goto_67
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a4

    .line 1345
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1346
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1347
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    goto :goto_d7

    .line 1349
    :cond_a4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1350
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1351
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1353
    :goto_d7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerLineMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerLineRealHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1354
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDragHandleRealWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1355
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDragHandleRealHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1356
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mupdateTouchArea(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    .line 1357
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mspeedUpRefreshRate(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return v0

    .line 1331
    :cond_fd
    :goto_fd
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "[OnDividerChanging] mPreviewViewHeight is 0 or mIsDividerChanging is false, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public OnDividerToMiddle()V
    .registers 4

    .line 1379
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1380
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4d

    .line 1381
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1383
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    goto :goto_80

    .line 1385
    :cond_4d
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1387
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1389
    :goto_80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mupdateTouchArea(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    return-void
.end method

.method public OnPIPRectChanging(IIII)V
    .registers 8

    .line 1274
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-eqz v0, :cond_1b6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1b6

    .line 1278
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmIsPIPRectViewEnable(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_1b5

    .line 1281
    :cond_1c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRectPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v1

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRectPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1283
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRectWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1284
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v2

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmRectHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1286
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmPipDisplayX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1287
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmPipDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1288
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmPipDisplayWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1289
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmPipDisplayHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;F)V

    .line 1290
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmMainSplitValue(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_12c

    .line 1291
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1292
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1293
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1294
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmSlaveViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    goto :goto_1a8

    .line 1298
    :cond_12c
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1299
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayX(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortY(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1300
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1301
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPipDisplayWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)F

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmSurfaceHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmPreviewViewWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmMainViewPortHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;I)V

    .line 1305
    :goto_1a8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoInPlatformMTK(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result p1

    if-eqz p1, :cond_1b5

    .line 1306
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mspeedUpRefreshRate(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)V

    :cond_1b5
    :goto_1b5
    return-void

    .line 1275
    :cond_1b6
    :goto_1b6
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "OnPIPRectChanging, mPreviewViewWidth or mPreviewViewHeight is 0."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public OnPIPRectClicked(Z)V
    .registers 6

    .line 1252
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 1253
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmTouchInfoCallback(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$TouchInfoCallback;->isExitPreviewPopwinow()Z

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_18

    return-void

    :cond_18
    if-eqz p1, :cond_20

    .line 1259
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$mprocessHandleDrawAuxView(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    .line 1261
    :cond_20
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    if-eqz p1, :cond_27

    const-wide/16 v2, 0xbb8

    goto :goto_29

    :cond_27
    const-wide/16 v2, 0x0

    :goto_29
    const/16 p1, 0x3e8

    invoke-static {p0, p1, v1, v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    return-void
.end method

.method public onDividerChangeBegin()V
    .registers 10

    .line 1319
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1320
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1322
    :cond_13
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerLineInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerLineMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v4

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleInitWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v5

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runDividerAnimator(IIIIII)V

    .line 1325
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    return-void
.end method

.method public onDividerChangeEnd()Z
    .registers 13

    .line 1363
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1364
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "[onDividerChangeEnd] mIsDividerChanging is false, return."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 1367
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmRecordingFlag(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1368
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/16 v2, 0x3e8

    const-wide/16 v3, 0xbb8

    invoke-static {v0, v2, v1, v3, v4}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    .line 1370
    :cond_24
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v5}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerLineMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v6

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerLineInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v7

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v8

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleInitWidth(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v9

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleMaxHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v10

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDividerDragHandleInitHeight(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->runDividerAnimator(IIIIII)V

    .line 1373
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmIsDividerChanging(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onPIPRectChangeBegin()V
    .registers 3

    .line 1266
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmHandler(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fputmIsPIPRectViewEnable(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;Z)V

    return-void
.end method

.method public onPIPRectChangeEnd()V
    .registers 5

    .line 1312
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$fgetmDualVideoPreviewUI(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewUI;->getPIPViewSelected()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1313
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$MyDualVideoPreviewUICallback;->this$0:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;

    const/4 v0, 0x0

    const-wide/16 v1, 0xbb8

    const/16 v3, 0x3e8

    invoke-static {p0, v3, v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;->-$$Nest$msendHandlerMessage(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;IIJ)V

    :cond_16
    return-void
.end method
