.class Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->setSelect(I)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->-$$Nest$fgetmItemClickListener(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;)Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;->onItemClick(I)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->-$$Nest$fgetmCaptureScenes(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->onItemClick(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;)V

    return-void
.end method

.method public onItemClick(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;)V
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$1;->this$0:Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;->-$$Nest$fgetmItemClickListener(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter;)Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureSceneAdapter$OnItemClickListener;->onItemClick(Lcom/transsion/camera/feature/mode/longexposure/setting/ui/scene/CaptureScene;)V

    return-void
.end method
