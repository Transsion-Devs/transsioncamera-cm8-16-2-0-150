.class Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/preview/SurfaceViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySurfaceHolderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Lcom/transsion/camera/app/ui/preview/SurfaceViewController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;-><init>(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    .line 168
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fputmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)V

    .line 169
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " surfaceChanged mPreviewWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPreviewHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    if-eqz p2, :cond_7a

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p2

    if-ne p2, p3, :cond_7a

    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p2

    if-ne p2, p4, :cond_7a

    .line 173
    iget-object p2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p2

    sget-object p3, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object p4, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p4}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result v0

    invoke-interface {p2, p3, p1, p4, v0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 174
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDrawn()V

    :cond_7a
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 160
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " surfaceCreated"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewWidth(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmPreviewHeight(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)I

    move-result p0

    invoke-interface {v0, v1, p1, v2, p0}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    :cond_28
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 180
    invoke-static {}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, " surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fputmSurfaceCreated(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)V

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fputmIsNeedReCreateSurface(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;Z)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/app/ui/preview/SurfaceViewController$MySurfaceHolderListener;->this$0:Lcom/transsion/camera/app/ui/preview/SurfaceViewController;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/preview/SurfaceViewController;->-$$Nest$fgetmSurfaceStatusListener(Lcom/transsion/camera/app/ui/preview/SurfaceViewController;)Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;

    move-result-object p0

    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->DEFAULT:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;->surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V

    :cond_27
    return-void
.end method
