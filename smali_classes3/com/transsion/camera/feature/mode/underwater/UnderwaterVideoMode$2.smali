.class Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/mode/underwater/CommonUnderwaterUI$OnRecordingTimeFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->initVideoModeUI(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;)V
    .registers 2

    .line 457
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingLimited()V
    .registers 2

    .line 464
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode$2;->this$0:Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/mode/underwater/UnderwaterVideoMode;->onShutterClick(II)Z

    return-void
.end method

.method public onRecordingTimeFull()V
    .registers 1

    return-void
.end method
