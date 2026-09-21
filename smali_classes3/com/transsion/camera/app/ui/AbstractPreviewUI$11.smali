.class Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractPreviewUI;->screenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

.field final synthetic val$back:Landroid/graphics/Bitmap;

.field final synthetic val$front:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractPreviewUI;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 1895
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$back:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$front:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1898
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$back:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$front:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    goto/16 :goto_9d

    .line 1902
    :cond_a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$front:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    .line 1903
    invoke-static {}, Lcom/transsion/camera/utils/BitmapUtils;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v4

    .line 1902
    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1904
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1906
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$back:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v3}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1907
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$front:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1909
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1910
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/DCIM/Camera/SCS_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1913
    :try_start_62
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_67} :catch_72

    .line 1914
    :try_start_67
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_6e
    .catchall {:try_start_67 .. :try_end_6e} :catchall_74

    .line 1915
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_81

    :catch_72
    move-exception v0

    goto :goto_7e

    :catchall_74
    move-exception v0

    .line 1913
    :try_start_75
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    goto :goto_7d

    :catchall_79
    move-exception v2

    :try_start_7a
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7d
    throw v0
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_72

    .line 1916
    :goto_7e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1920
    :goto_81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->this$0:Lcom/transsion/camera/app/ui/AbstractPreviewUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$fgetmPreviewView(Lcom/transsion/camera/app/ui/AbstractPreviewUI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1922
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$back:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1923
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractPreviewUI$11;->val$front:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void

    .line 1899
    :cond_9d
    :goto_9d
    invoke-static {}, Lcom/transsion/camera/app/ui/AbstractPreviewUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "back or front is null: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
