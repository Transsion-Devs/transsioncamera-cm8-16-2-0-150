.class Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 6

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)Landroid/graphics/Rect;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result v0

    .line 30
    invoke-static {p1, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result v1

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 31
    :goto_21
    invoke-static {}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAbsolutePreviewRectChanged, preview view rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", preview view width:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_65

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5$1;->this$0:Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/groupcapture/GroupCaptureUI5;->updateGroupCaptureIconLayout()V

    :cond_65
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
