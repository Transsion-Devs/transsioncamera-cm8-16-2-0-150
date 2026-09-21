.class Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$1;->this$0:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 34
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    const-string p2, "need_memory_zoom_value"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom$1;->this$0:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;->-$$Nest$fputmSavedZoomState(Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
