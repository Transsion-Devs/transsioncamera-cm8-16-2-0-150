.class public final synthetic Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/cache/VideoFrameDiskCacheManager$IWriter;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final write(Ljava/io/File;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper$$ExternalSyntheticLambda2;->f$0:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/helper/VideoFrameHelper;->$r8$lambda$-SfdZ9bMpttY2fIRcGrxRCPdb24(Landroid/graphics/Bitmap;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
