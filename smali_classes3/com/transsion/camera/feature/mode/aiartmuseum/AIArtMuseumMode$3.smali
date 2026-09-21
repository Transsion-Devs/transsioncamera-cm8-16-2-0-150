.class Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideModeUI()V
    .registers 1

    return-void
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public showModeUI()V
    .registers 1

    return-void
.end method

.method public updateAppUIState(I)V
    .registers 5

    .line 553
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->access$100(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppUIState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_45

    .line 555
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->access$200(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    const-string v0, "key_ai_art_museum"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 556
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumUI(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumUI;->updateEffect(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumPreview(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumPreview;->updateEffect(Ljava/lang/String;)V

    .line 558
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode$3;->this$0:Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;->-$$Nest$fgetmAIArtMuseumCapture(Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumMode;)Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/AIArtMuseumCapture;->updateEffect(Ljava/lang/String;)V

    :cond_45
    return-void
.end method
