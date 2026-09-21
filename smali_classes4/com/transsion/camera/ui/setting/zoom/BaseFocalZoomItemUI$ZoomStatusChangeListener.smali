.class Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 32
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->-$$Nest$fgetmTag(Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 36
    const-string v0, "key_wide_camera_item_seleccted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI$ZoomStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/BaseFocalZoomItemUI;->updateEntryViewStatus(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method
