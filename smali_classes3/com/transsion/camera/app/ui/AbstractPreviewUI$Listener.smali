.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field private runner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .registers 4

    .line 1862
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1863
    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;->runner:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .registers 4

    if-nez p1, :cond_11

    .line 1869
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "request success(only one)"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1870
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$Listener;->runner:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1872
    :cond_11
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
