.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/ui/setting/zoom/InstantZoomBar$InstantZoomSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 2

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstantZoomBarTouchDown(I)V
    .registers 5

    .line 963
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onInstantZoomBarTouchDown] downRatio:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 965
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    const-string v1, "key_zoom_type_for_touch"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    const/16 v2, 0x40

    .line 966
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 967
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_click_down_zoom_ratio"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const/4 v1, 0x0

    .line 968
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method public onInstantZoomSelected(I)V
    .registers 4

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomTickRing(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/ui/setting/zoom/ZoomTickRing;->setZoomRatio(IZ)V

    .line 955
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$2;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    const/16 v0, 0x40

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnZoomRatioChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;II)V

    .line 956
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float p1, p1

    mul-float/2addr p1, v0

    sget v0, Lcom/transsion/camera/utils/SettingInfo;->ZOOM_RATIO_UNIT:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 958
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x1a

    .line 956
    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method
