.class Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$3;
.super Lcom/transsion/camera/utils/threads/WorkTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;->parasData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 153
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$3;->val$version:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/transsion/camera/utils/threads/WorkTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doProcess()V
    .registers 2

    .line 156
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 157
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->mkDir(Ljava/lang/String;)Z

    .line 158
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->IMAGERY_GUIDE_FILE_ROOT:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$3;->val$version:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/imageryguide/utils/FileUtils;->writeVersionToFile(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
