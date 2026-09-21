.class Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;
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
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V
    .registers 2

    .line 335
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;-><init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 335
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 338
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "capture_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_5b

    .line 341
    :cond_2a
    const-string p1, "capture_start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 342
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->-$$Nest$monCaptureStart(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V

    return-void

    .line 343
    :cond_38
    const-string p1, "capture_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 344
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->-$$Nest$monAllCaptureEnd(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)V

    return-void

    .line 345
    :cond_46
    const-string p1, "shot2shot_end"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 346
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance$StatusChangeListener;->this$0:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->-$$Nest$fgetmPortraitModeEnhanceShot2ShotSkipPolicy(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;)Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceShot2ShotSkipPolicy;

    move-result-object p0

    if-eqz p0, :cond_5b

    .line 347
    const-string p0, "[Shot2ShotSkip] onShot2ShotEnd"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_5b
    :goto_5b
    return-void
.end method
