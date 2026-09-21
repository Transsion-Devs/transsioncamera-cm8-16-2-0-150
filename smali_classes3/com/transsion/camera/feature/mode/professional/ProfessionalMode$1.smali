.class Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->-$$Nest$fgetmPreviewRect(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;->access$000(Lcom/transsion/camera/feature/mode/professional/ProfessionalMode;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string p1, "key_zoom_config_changed"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method
