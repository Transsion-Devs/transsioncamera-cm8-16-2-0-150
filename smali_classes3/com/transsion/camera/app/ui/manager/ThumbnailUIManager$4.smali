.class Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->setThumbnailListener(Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;)V
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

    .line 260
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 263
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "ThumbnailUI onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager$4;->this$0:Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;->-$$Nest$fgetmThumbnailListener(Lcom/transsion/camera/app/ui/manager/ThumbnailUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IThumbnailListener;->onThumbnailClicked(Landroid/view/View;)V

    :cond_1a
    return-void
.end method
