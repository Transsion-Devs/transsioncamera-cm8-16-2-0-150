.class Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;
.super Lcom/transsion/camera/app/common/preview/PreviewCallbacker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/preview/PreviewCallbacker;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .registers 6

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$fgetmIsSurfaceDestroy(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 129
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "surfaceDestroy,draw return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_13
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$mdrawPreview(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
    .registers 6

    .line 137
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-static {p0, p1, p2, p4, p3}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$mdrawPreview(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Landroid/graphics/SurfaceTexture;III)Z

    move-result p0

    return p0
.end method

.method public modeUninitCallback()V
    .registers 3

    .line 155
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "modeUninitCallback"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->releaseRenderResource()V

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$fputmIsSurfaceDestroy(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Z)V

    .line 150
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "surfaceCreatedCallback()"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    .line 142
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "surfaceDestroycallback"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->-$$Nest$fputmIsSurfaceDestroy(Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;Z)V

    .line 144
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode$1;->this$0:Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/mode/SuperNightFilterMode;->releaseRenderResource()V

    return-void
.end method
