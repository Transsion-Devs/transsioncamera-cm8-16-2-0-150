.class Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    .line 39
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fputchangedFormat(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V

    .line 40
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {v0, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fputchangedWidth(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {v0, p4}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fputchangedHeight(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;I)V

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fgetcallbacks(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 45
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    goto :goto_37

    :cond_47
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fputcreated(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;Z)V

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fgetcallbacks(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 33
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    goto :goto_17

    :cond_27
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fputcreated(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;Z)V

    .line 52
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder$1;->this$0:Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;->-$$Nest$fgetcallbacks(Lcom/transsion/camera/feature/mode/vlog/widget/StickySurfaceHolder;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceHolder$Callback;

    .line 55
    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    goto :goto_17

    :cond_27
    return-void
.end method
