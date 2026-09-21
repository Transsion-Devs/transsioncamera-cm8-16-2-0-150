.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;
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

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDone(Lcom/transsion/camera/manager/ThumbnailItem;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_26

    .line 102
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "onTaskDone item is null!"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    .line 104
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object p1

    invoke-interface {p1, v1, v0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    .line 106
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    return-void

    .line 108
    :cond_26
    iget-object v1, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_34

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onTaskDone bitmap is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_34
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object v1

    iget-object v2, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mUri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v0}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailUriUpdated(Landroid/net/Uri;ZZ)V

    .line 115
    :cond_47
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object v1, v1, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    iget-object p1, p1, Lcom/transsion/camera/manager/ThumbnailItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v1, p1, v0}, Lcom/transsion/camera/app/ui/IThumbnailUI;->updateThumbnail(Landroid/graphics/Bitmap;Z)V

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->mThumbnailUI:Lcom/transsion/camera/app/ui/IThumbnailUI;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IRootUI;->setEnable(Z)V

    return-void
.end method
