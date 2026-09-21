.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Landroid/graphics/Rect;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result v0

    invoke-static {p1, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(Landroid/graphics/Rect;D)Z

    move-result v1

    if-ne v0, v1, :cond_23

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->updateNightLiteSwitchLayout()V

    .line 36
    :cond_23
    invoke-static {}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", preview view width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5$1;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI5;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_60
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
