.class Lcom/transsion/camera/app/common/mode/ImageProcessor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/mode/ImageProcessor;->createSurfaceStateListener()Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V
    .registers 2

    .line 705
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceReleased(Lcom/transsion/camera/app/common/mode/CaptureSurface;)V
    .registers 3

    .line 708
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    iget-object p1, p1, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "SurfaceStateListener onSurfaceReleased"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 709
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p1, p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$mremoveSurfaceStateListenerLocked(Lcom/transsion/camera/app/common/mode/ImageProcessor;Lcom/transsion/camera/app/common/mode/CaptureSurface$SurfaceStateListener;)V

    .line 710
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor$5;->this$0:Lcom/transsion/camera/app/common/mode/ImageProcessor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->-$$Nest$mcheckAllSurfaceReleased(Lcom/transsion/camera/app/common/mode/ImageProcessor;)V

    return-void
.end method
