.class Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;->initSubView(Lcom/transsion/camera/app/common/IAppUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$2;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5$2;->this$0:Lcom/transsion/camera/ui/setting/videosightshock/VideoFilterUI5;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/videosightshock/ui/VideoFilterUI;->notifySettingChange(Ljava/lang/String;)V

    return-void
.end method
