.class Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/widecamera/WideCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 65
    const-string p2, "need_memory_zoom_value"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/WideCamera$1;->this$0:Lcom/transsion/camera/feature/setting/widecamera/WideCamera;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/widecamera/WideCamera;->-$$Nest$fputmNeedSaveZoomValue(Lcom/transsion/camera/feature/setting/widecamera/WideCamera;Z)V

    :cond_e
    return-void
.end method
