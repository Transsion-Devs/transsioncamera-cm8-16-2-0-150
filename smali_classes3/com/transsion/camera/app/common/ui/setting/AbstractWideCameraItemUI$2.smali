.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setupEntryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .registers 2

    .line 325
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 328
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 331
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 332
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 333
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onTouchForFlip(Landroid/view/MotionEvent;)V

    .line 334
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const-string v3, "key_wide_camera_touch_event"

    const/4 v4, 0x1

    if-eqz v2, :cond_de

    if-eq v2, v4, :cond_ad

    const/4 v5, 0x2

    if-eq v2, v5, :cond_28

    const/4 p1, 0x3

    if-eq v2, p1, :cond_ad

    goto/16 :goto_10c

    .line 355
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmLastScrollX(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v0

    sub-float v0, p1, v0

    .line 356
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmLastScrollY(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v2

    sub-float v2, v1, v2

    .line 357
    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsScrollTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v3

    if-nez v3, :cond_5c

    mul-float v3, v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    cmpl-double v2, v2, v5

    if-ltz v2, :cond_5c

    .line 358
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onLongClickEvent()Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 359
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2, v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsLongPressTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 362
    :cond_5c
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsLongPressTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 363
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v2, v2, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_a2

    .line 364
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastScrollX="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v5}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmLastScrollX(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " currentX="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " dx="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v0, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$mtransmitMotionEvent(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 366
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v0, v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsScrollTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 370
    :cond_a2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmLastScrollX(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)V

    .line 371
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmLastScrollY(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)V

    goto :goto_10c

    .line 346
    :cond_ad
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsLongPressTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 347
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmIsScrollTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_c8

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v1, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_c8

    .line 348
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$mtransmitMotionEvent(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 349
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsScrollTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 351
    :cond_c8
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->stopTouching(Landroid/view/View;)V

    .line 352
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v0, "value_wide_camera_touch_up"

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10c

    .line 336
    :cond_de
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsLongPressTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 337
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmIsScrollTriggered(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)V

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmLastScrollX(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)V

    .line 339
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fputmLastScrollY(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)V

    .line 340
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mEntryView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->startTouching(Landroid/view/View;)V

    .line 341
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onRecordingClickEvent()V

    .line 342
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, v3}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string/jumbo v0, "value_wide_camera_touch_down"

    invoke-virtual {p1, v3, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 376
    :goto_10c
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$2;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->-$$Nest$fgetmGestureDetector(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4
.end method
