.class Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/aishutter/AiShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Lcom/transsion/camera/feature/setting/aishutter/AiShutter-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 382
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 386
    invoke-static {}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onStatusChanged], key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    const-string v0, "key_super_flash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "key_sat_stream_id"

    const-string v3, "key_super_definition"

    const-string v4, "key_asd_algorithm_value"

    const-string v5, "key_camera_zoom"

    if-nez v1, :cond_49

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 389
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 390
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_86

    .line 394
    :cond_49
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_160

    goto :goto_81

    :sswitch_55
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_81

    :cond_5c
    const/4 v6, 0x4

    goto :goto_81

    :sswitch_5e
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_65

    goto :goto_81

    :cond_65
    const/4 v6, 0x3

    goto :goto_81

    :sswitch_67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6e

    goto :goto_81

    :cond_6e
    const/4 v6, 0x2

    goto :goto_81

    :sswitch_70
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_77

    goto :goto_81

    :cond_77
    const/4 v6, 0x1

    goto :goto_81

    :sswitch_79
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_80

    goto :goto_81

    :cond_80
    const/4 v6, 0x0

    :goto_81
    const-string p1, "on"

    packed-switch v6, :pswitch_data_176

    :goto_86
    return-void

    .line 428
    :pswitch_87
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fputcurrentAsdAlgorithm(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V

    .line 429
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fgetcurrentAsdAlgorithm(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)I

    move-result p1

    const/16 p2, 0x65

    if-ne p2, p1, :cond_a8

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByTeleZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 433
    :cond_a8
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isSprdPlatform()Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fgetmCurrentZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$sfgetZOOM_RATIO_DENOMINATOR()F

    move-result p2

    div-float/2addr p1, p2

    const p2, 0x40066666    # 2.1f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_c2

    return-void

    .line 440
    :cond_c2
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 403
    :pswitch_c8
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fputmSatStreamId(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;Ljava/lang/String;)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByTeleZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-eqz p1, :cond_dd

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifOpenSuperDefinition(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-nez p1, :cond_e5

    :cond_dd
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-eqz p1, :cond_eb

    .line 405
    :cond_e5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 407
    :cond_eb
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 396
    :pswitch_f1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 397
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 399
    :cond_fd
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 411
    :pswitch_103
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fputmCurrentZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)V

    .line 412
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByTeleZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-eqz p1, :cond_11c

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifOpenSuperDefinition(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-nez p1, :cond_137

    :cond_11c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result p1

    if-nez p1, :cond_137

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$fgetmCurrentZoomValue(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mneedCloseAisByOver2XZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;I)Z

    move-result p1

    if-eqz p1, :cond_131

    goto :goto_137

    .line 415
    :cond_131
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 413
    :cond_137
    :goto_137
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 419
    :pswitch_13d
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mifNeedCloseAisByTeleZoom(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_153

    const-string p1, "billion"

    .line 420
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_159

    .line 421
    :cond_153
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyCloseAis(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    .line 423
    :cond_159
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/aishutter/AiShutter$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/aishutter/AiShutter;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/aishutter/AiShutter;->-$$Nest$mexclusivelyOpenAisIfNeed(Lcom/transsion/camera/feature/setting/aishutter/AiShutter;)V

    return-void

    nop

    :sswitch_data_160
    .sparse-switch
        -0x711a6189 -> :sswitch_79
        -0x43305133 -> :sswitch_70
        -0x25689fb4 -> :sswitch_67
        0x1accdf41 -> :sswitch_5e
        0x25224bf4 -> :sswitch_55
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_13d
        :pswitch_103
        :pswitch_f1
        :pswitch_c8
        :pswitch_87
    .end packed-switch
.end method
