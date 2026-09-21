.class Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->getBitmap(IIILandroid/graphics/Rect;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;->this$1:Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .registers 3

    if-nez p1, :cond_18

    .line 243
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "Blur Bitmap created success"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;->this$1:Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->-$$Nest$fputmCreateBitmapSuccess(Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;Z)V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator$1;->this$1:Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$SurfaceViewPreviewOperator;->mStateLock:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/StateWait;->notifyState()V

    :cond_18
    return-void
.end method
