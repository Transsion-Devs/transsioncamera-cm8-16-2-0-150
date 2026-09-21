.class Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V
    .registers 2

    .line 259
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;-><init>(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .line 262
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureAvailable mAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mAuxPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mAuxPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_82

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_82

    .line 266
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 267
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 268
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_82
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    .line 288
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onSurfaceTextureDestroyed mAuxSurface: + surface"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    .line 275
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceTextureSizeChanged mAuxSurface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mAuxPreviewWidth: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mAuxPreviewHeight: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_82

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    if-lez p2, :cond_82

    .line 279
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p2

    iget-object p3, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p3}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 280
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_82

    .line 281
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewWidth(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController$MySurfaceTextureListener;->this$0:Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;->-$$Nest$fgetmAuxPreviewHeight(Lcom/transsion/camera/app/ui/preview/GLSurfaceViewController;)I

    move-result p0

    invoke-interface {p2, p3, p1, v0, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_82
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method
