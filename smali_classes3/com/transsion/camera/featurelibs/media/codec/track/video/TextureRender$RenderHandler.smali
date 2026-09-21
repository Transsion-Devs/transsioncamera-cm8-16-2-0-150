.class Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Landroid/os/Looper;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;->this$0:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    .line 110
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Landroid/os/Looper;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;-><init>(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 115
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1e

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 p1, 0x2

    if-eq v0, p1, :cond_e

    return-void

    .line 127
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;->this$0:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    invoke-static {p0}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->-$$Nest$mhandleRelease(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;)V

    return-void

    .line 123
    :cond_14
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;->this$0:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->-$$Nest$mhandleTextureUpdated(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$TextureInfo;)V

    return-void

    .line 119
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$RenderHandler;->this$0:Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;

    invoke-static {p0, p1}, Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;->-$$Nest$mhandlePrepare(Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender;Lcom/transsion/camera/featurelibs/media/codec/track/video/TextureRender$PrepareInfo;)V

    return-void
.end method
