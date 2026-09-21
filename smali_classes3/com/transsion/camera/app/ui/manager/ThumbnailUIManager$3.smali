.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/manager/ThumbnailLoader$TaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;-><init>(Landroid/content/ContentResolver;Lcom/transsion/camera/app/common/manager/IScreenManager;Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;ZLcom/transsion/camera/app/common/storage/DataStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/transsion/camera/manager/ThumbnailItem;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_15

    .line 126
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "onTaskDone item is null!"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 p1, 0x0

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void

    .line 129
    :cond_15
    iget-object p1, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_23

    .line 130
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onTaskDone bitmap is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 133
    :cond_23
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$3;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method
