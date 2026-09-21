.class Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyStatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;


# direct methods
.method public static synthetic $r8$lambda$qZkTFoE9u1R0PAleDDoE1a1BIro(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mupdateZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V
    .registers 2

    .line 1804
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Lcom/transsion/camera/ui/setting/zoom/ZoomUI5-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 1804
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 1808
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyStatusChangeListener: key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_da

    goto :goto_65

    :sswitch_2f
    const-string v0, "key_super_anti_video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    goto :goto_65

    :cond_38
    const/4 v4, 0x4

    goto :goto_65

    :sswitch_3a
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_65

    :cond_43
    const/4 v4, 0x3

    goto :goto_65

    :sswitch_45
    const-string v0, "key_zoom_config_changed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4e

    goto :goto_65

    :cond_4e
    move v4, v1

    goto :goto_65

    :sswitch_50
    const-string v0, "key_vlog_correct_orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_59

    goto :goto_65

    :cond_59
    move v4, v2

    goto :goto_65

    :sswitch_5b
    const-string v0, "key_record_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    goto :goto_65

    :cond_64
    move v4, v3

    :goto_65
    packed-switch v4, :pswitch_data_f0

    goto :goto_cd

    .line 1820
    :pswitch_69
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mperformOnMainThread(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/Runnable;)V

    return-void

    .line 1812
    :pswitch_74
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mdoOnConflictUIChanged(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/String;)V

    return-void

    .line 1823
    :pswitch_7a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p1

    if-eqz p1, :cond_cd

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$fgetmZoomConfig(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)Lcom/transsion/camera/app/common/ZoomConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ZoomConfig;->isOrientationFixed()Z

    move-result p1

    if-nez p1, :cond_8f

    goto :goto_cd

    .line 1827
    :cond_8f
    const-string p1, ","

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/StringUtils;->splitString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1828
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_b4

    .line 1829
    invoke-static {}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStatusChanged, return for illegal value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1833
    :cond_b4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1834
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 1835
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    invoke-static {p0, p2, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$msetOrientation(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;IZ)V

    :cond_cd
    :goto_cd
    return-void

    .line 1817
    :pswitch_ce
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener;->this$0:Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;

    new-instance p1, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5$MyStatusChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;)V

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;->-$$Nest$mperformOnMainThread(Lcom/transsion/camera/ui/setting/zoom/ZoomUI5;Ljava/lang/Runnable;)V

    return-void

    nop

    :sswitch_data_da
    .sparse-switch
        -0x7dbe4efd -> :sswitch_5b
        -0x76350356 -> :sswitch_50
        -0x6e38c53d -> :sswitch_45
        0x50497713 -> :sswitch_3a
        0x7ddb1282 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_7a
        :pswitch_ce
        :pswitch_74
        :pswitch_69
    .end packed-switch
.end method
