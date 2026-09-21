.class Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/doc/DocumentMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DocHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Landroid/os/Looper;)V
    .registers 3

    .line 574
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    .line 575
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 580
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 581
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_67

    const/4 v4, 0x3

    if-eq v0, v1, :cond_22

    if-eq v0, v4, :cond_10

    goto :goto_2e

    .line 609
    :cond_10
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$100(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmCurrentUri(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->updateThumbnail(Landroid/net/Uri;)V

    return-void

    .line 597
    :cond_22
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmDocUI(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2f

    :goto_2e
    return-void

    .line 600
    :cond_2f
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmShutterClick(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 601
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)V

    .line 603
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mresetTips(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 605
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmDocUI(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_51

    move v2, v3

    :cond_51
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->hideViewWithAnim(Z)V

    .line 606
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmDocHandler(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_61

    const-wide/16 v0, 0x0

    goto :goto_63

    :cond_61
    const-wide/16 v0, 0x96

    :goto_63
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 584
    :cond_67
    :try_start_67
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mImageProcessor:Lcom/transsion/camera/app/common/mode/IImageProcessor;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->access$000(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/common/mode/IImageProcessor;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentImageProcessor;->getBitmapForShow()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->getExpectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmDocUI(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/mode/docmode/DocumentModeUI;->showView(Landroid/graphics/Bitmap;)V

    .line 586
    sget-object p1, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] show dialog"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mstartVibrator(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 588
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fgetmDocHandler(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;

    move-result-object p1

    const-wide/16 v4, 0x5dc

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_97} :catch_98

    return-void

    :catch_98
    move-exception p1

    .line 590
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0, v3}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmIsCheck(Lcom/transsion/camera/feature/mode/doc/DocumentMode;Z)V

    .line 591
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {v0, v2}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$fputmIgnoreFrame(Lcom/transsion/camera/feature/mode/doc/DocumentMode;I)V

    .line 592
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/doc/DocumentMode$DocHandler;->this$0:Lcom/transsion/camera/feature/mode/doc/DocumentMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/doc/DocumentMode;->-$$Nest$mresetTips(Lcom/transsion/camera/feature/mode/doc/DocumentMode;)V

    .line 593
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
