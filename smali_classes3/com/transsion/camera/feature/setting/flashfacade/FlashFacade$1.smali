.class Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)V
    .registers 2

    .line 501
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 505
    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$fgetmFlashManager(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p2

    if-eqz p2, :cond_16

    iget-object p2, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$fgetmFlashManager(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->facingFront()Z

    move-result p2

    if-nez p2, :cond_16

    goto/16 :goto_95

    .line 509
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "ring_screen_light_switch_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "ringscreenlight"

    if-nez p2, :cond_4b

    const-string p2, "ring_screen_light_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_95

    .line 512
    :cond_2c
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 513
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "When it\'s facing camera,go to AR core,close ring screen light."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 514
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$fgetmDefaultValue(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->onValueChanged(Ljava/lang/String;)V

    return-void

    .line 519
    :cond_4b
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "auto"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_65

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$fgetmFlashManager(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->lowLight()Z

    move-result p1

    if-nez p1, :cond_71

    :cond_65
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_95

    .line 520
    :cond_71
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "When switch camera facing,close ring screen light ahead of time."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;->-$$Nest$fgetmFlashManager(Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;)Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;->getFlashFeatureRepository()Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/feature/FlashFeatureRepository;->getFeatures()Ljava/util/Map;

    move-result-object p0

    const-string p1, "key_ring_screen_light"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;

    .line 522
    const-string p1, "off"

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/feature/IFlashFeature;->setValue(Ljava/lang/String;)V

    :cond_95
    :goto_95
    return-void
.end method
